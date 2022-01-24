#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * PGFunction ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 char* FUNC4 (char const*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

PGFunction
FUNC7(const char *filename, const char *funcname,
					   bool signalNotFound, void **filehandle)
{
	char	   *fullname;
	void	   *lib_handle;
	PGFunction	retval;

	/* Expand the possibly-abbreviated filename to an exact path name */
	fullname = FUNC4(filename);

	/* Load the shared library, unless we already did */
	lib_handle = FUNC5(fullname);

	/* Return handle if caller wants it */
	if (filehandle)
		*filehandle = lib_handle;

	/* Look up the function within the library. */
	retval = (PGFunction) FUNC0(lib_handle, funcname);

	if (retval == NULL && signalNotFound)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC3("could not find function \"%s\" in file \"%s\"",
						funcname, fullname)));

	FUNC6(fullname);
	return retval;
}