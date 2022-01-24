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
typedef  int /*<<< orphan*/  DL_HANDLE ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 

int FUNC5(const char *path)
{
#if ZEND_EXTENSIONS_SUPPORT
	DL_HANDLE handle;

	handle = DL_LOAD(path);
	if (!handle) {
#ifndef ZEND_WIN32
		fprintf(stderr, "Failed loading %s:  %s\n", path, DL_ERROR());
#else
		fprintf(stderr, "Failed loading %s\n", path);
		/* See http://support.microsoft.com/kb/190351 */
		fflush(stderr);
#endif
		return FAILURE;
	}
	return zend_load_extension_handle(handle, path);
#else
	FUNC3(stderr, "Extensions are not supported on this platform.\n");
/* See http://support.microsoft.com/kb/190351 */
#ifdef ZEND_WIN32
	fflush(stderr);
#endif
	return FAILURE;
#endif
}