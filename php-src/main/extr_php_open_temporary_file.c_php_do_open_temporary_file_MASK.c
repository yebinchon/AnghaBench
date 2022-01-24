#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
typedef  char wchar_t ;
struct TYPE_3__ {char* cwd; size_t cwd_length; } ;
typedef  TYPE_1__ cwd_state ;

/* Variables and functions */
 int /*<<< orphan*/  CWD_REALPATH ; 
 int /*<<< orphan*/  ERROR_INVALID_NAME ; 
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int MAXPATHLEN ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  PHP_WIN32_CP_IGNORE_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (char*,int,int) ; 
 int _O_BINARY ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,size_t) ; 
 char* FUNC14 (char const*) ; 
 char* FUNC15 (char*,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC16 (char*,int,char*,char*,char*,char const*) ; 
 size_t FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(const char *path, const char *pfx, zend_string **opened_path_p)
{
#ifdef PHP_WIN32
	char *opened_path = NULL;
	size_t opened_path_len;
	wchar_t *cwdw, *pfxw, pathw[MAXPATHLEN];
#else
	char opened_path[MAXPATHLEN];
	char *trailing_slash;
#endif
	char cwd[MAXPATHLEN];
	cwd_state new_state;
	int fd = -1;
#ifndef HAVE_MKSTEMP
	int open_flags = O_CREAT | O_TRUNC | O_RDWR
#ifdef PHP_WIN32
		| _O_BINARY
#endif
		;
#endif

	if (!path || !path[0]) {
		return -1;
	}

#ifdef PHP_WIN32
	if (!php_win32_check_trailing_space(pfx, strlen(pfx))) {
		SetLastError(ERROR_INVALID_NAME);
		return -1;
	}
#endif

	if (!FUNC4(cwd, MAXPATHLEN)) {
		cwd[0] = '\0';
	}

	new_state.cwd = FUNC9(cwd);
	new_state.cwd_length = FUNC17(cwd);

	if (FUNC18(&new_state, path, NULL, CWD_REALPATH)) {
		FUNC8(new_state.cwd);
		return -1;
	}

#ifndef PHP_WIN32
	if (FUNC1(new_state.cwd[new_state.cwd_length - 1])) {
		trailing_slash = "";
	} else {
		trailing_slash = "/";
	}

	if (FUNC16(opened_path, MAXPATHLEN, "%s%s%sXXXXXX", new_state.cwd, trailing_slash, pfx) >= MAXPATHLEN) {
		FUNC8(new_state.cwd);
		return -1;
	}
#endif

#ifdef PHP_WIN32
	cwdw = php_win32_ioutil_any_to_w(new_state.cwd);
	pfxw = php_win32_ioutil_any_to_w(pfx);
	if (!cwdw || !pfxw) {
		free(cwdw);
		free(pfxw);
		efree(new_state.cwd);
		return -1;
	}

	if (GetTempFileNameW(cwdw, pfxw, 0, pathw)) {
		opened_path = php_win32_ioutil_conv_w_to_any(pathw, PHP_WIN32_CP_IGNORE_LEN, &opened_path_len);
		if (!opened_path || opened_path_len >= MAXPATHLEN) {
			free(cwdw);
			free(pfxw);
			efree(new_state.cwd);
			return -1;
		}
		assert(strlen(opened_path) == opened_path_len);

		/* Some versions of windows set the temp file to be read-only,
		 * which means that opening it will fail... */
		if (VCWD_CHMOD(opened_path, 0600)) {
			free(cwdw);
			free(pfxw);
			efree(new_state.cwd);
			free(opened_path);
			return -1;
		}
		fd = VCWD_OPEN_MODE(opened_path, open_flags, 0600);
	}

	free(cwdw);
	free(pfxw);
#elif defined(HAVE_MKSTEMP)
	fd = mkstemp(opened_path);
#else
	if (FUNC12(opened_path)) {
		fd = FUNC5(opened_path, open_flags);
	}
#endif

#ifdef PHP_WIN32
	if (fd != -1 && opened_path_p) {
		*opened_path_p = zend_string_init(opened_path, opened_path_len, 0);
	}
	free(opened_path);
#else
	if (fd != -1 && opened_path_p) {
		*opened_path_p = FUNC19(opened_path, FUNC17(opened_path), 0);
	}
#endif
	FUNC8(new_state.cwd);
	return fd;
}