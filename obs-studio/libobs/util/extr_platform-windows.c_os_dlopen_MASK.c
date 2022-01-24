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
typedef  int wchar_t ;
struct dstr {int /*<<< orphan*/  array; } ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  void* HMODULE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_PROC_NOT_FOUND ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LOG_INFO ; 
 void* FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC11 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct dstr*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int**) ; 
 int* FUNC14 (int*,int) ; 

void *FUNC15(const char *path)
{
	struct dstr dll_name;
	wchar_t *wpath;
	wchar_t *wpath_slash;
	HMODULE h_library = NULL;

	if (!path)
		return NULL;

	FUNC11(&dll_name, path);
	FUNC12(&dll_name, "\\", "/");
	if (!FUNC9(&dll_name, ".dll"))
		FUNC8(&dll_name, ".dll");

	FUNC13(dll_name.array, 0, &wpath);

	/* to make module dependency issues easier to deal with, allow
	 * dynamically loaded libraries on windows to search for dependent
	 * libraries that are within the library's own directory */
	wpath_slash = FUNC14(wpath, L'/');
	if (wpath_slash) {
		*wpath_slash = 0;
		FUNC5(wpath);
		*wpath_slash = L'/';
	}

	h_library = FUNC2(wpath);
	FUNC6(wpath);
	FUNC10(&dll_name);

	if (wpath_slash)
		FUNC5(NULL);

	if (!h_library) {
		DWORD error = FUNC1();

		/* don't print error for libraries that aren't meant to be
		 * dynamically linked */
		if (error == ERROR_PROC_NOT_FOUND)
			return NULL;

		char *message = NULL;

		FUNC0(FORMAT_MESSAGE_FROM_SYSTEM |
				       FORMAT_MESSAGE_IGNORE_INSERTS |
				       FORMAT_MESSAGE_ALLOCATE_BUFFER,
			       NULL, error,
			       FUNC4(LANG_ENGLISH, SUBLANG_ENGLISH_US),
			       (LPSTR)&message, 0, NULL);

		FUNC7(LOG_INFO, "LoadLibrary failed for '%s': %s (%lu)", path,
		     message, error);

		if (message)
			FUNC3(message);
	}

	return h_library;
}