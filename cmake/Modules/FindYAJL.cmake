# - Find Iberty
# This module finds libiberty.
#
# It sets the following variables:
#  YAJL_LIBRARY     - The library to link against.

FIND_LIBRARY( YAJL_LIBRARY NAMES yajl)

IF (YAJL_LIBRARY)

	# show which library was found only if not quiet
	MESSAGE(STATUS "Found libyajl: ${YAJL_LIBRARY}")

	SET(YAJL_FOUND TRUE)

ELSE (YAJL_LIBRARY)

	IF ( YAJL_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could not find libyajl. try to install?")
	ENDIF (YAJL_FIND_REQUIRED)

ENDIF (YAJL_LIBRARY)
