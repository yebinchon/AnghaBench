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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ IS_UNDEF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PHAR_MUNG_PHP_SELF ; 
 int PHAR_MUNG_REQUEST_URI ; 
 int PHAR_MUNG_SCRIPT_FILENAME ; 
 int PHAR_MUNG_SCRIPT_NAME ; 
 size_t TRACK_VARS_SERVER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_globals ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,size_t) ; 
 int /*<<< orphan*/  phar_SERVER_mung_list ; 
 size_t FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 (int,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(char *fname, char *entry, size_t entry_len, char *basename, size_t request_uri_len) /* {{{ */
{
	HashTable *_SERVER;
	zval *stuff;
	char *path_info;
	size_t basename_len = FUNC11(basename);
	size_t code;
	zval temp;

	/* "tweak" $_SERVER variables requested in earlier call to Phar::mungServer() */
	if (FUNC9(FUNC0(http_globals)[TRACK_VARS_SERVER]) == IS_UNDEF) {
		return;
	}

	_SERVER = FUNC5(FUNC0(http_globals)[TRACK_VARS_SERVER]);

	/* PATH_INFO and PATH_TRANSLATED should always be munged */
	if (NULL != (stuff = FUNC13(_SERVER, "PATH_INFO", sizeof("PATH_INFO")-1))) {
		path_info = FUNC7(stuff);
		code = FUNC6(stuff);
		if (code > (size_t)entry_len && !FUNC10(path_info, entry, entry_len)) {
			FUNC3(&temp, FUNC8(stuff));
			FUNC4(stuff, path_info + entry_len, request_uri_len);
			FUNC14(_SERVER, "PHAR_PATH_INFO", sizeof("PHAR_PATH_INFO")-1, &temp);
		}
	}

	if (NULL != (stuff = FUNC13(_SERVER, "PATH_TRANSLATED", sizeof("PATH_TRANSLATED")-1))) {
		zend_string *str = FUNC12(4096, "phar://%s%s", fname, entry);

		FUNC3(&temp, FUNC8(stuff));
		FUNC2(stuff, str);

		FUNC14(_SERVER, "PHAR_PATH_TRANSLATED", sizeof("PHAR_PATH_TRANSLATED")-1, &temp);
	}

	if (!FUNC1(phar_SERVER_mung_list)) {
		return;
	}

	if (FUNC1(phar_SERVER_mung_list) & PHAR_MUNG_REQUEST_URI) {
		if (NULL != (stuff = FUNC13(_SERVER, "REQUEST_URI", sizeof("REQUEST_URI")-1))) {
			path_info = FUNC7(stuff);
			code = FUNC6(stuff);
			if (code > basename_len && !FUNC10(path_info, basename, basename_len)) {
				FUNC3(&temp, FUNC8(stuff));
				FUNC4(stuff, path_info + basename_len, code - basename_len);
				FUNC14(_SERVER, "PHAR_REQUEST_URI", sizeof("PHAR_REQUEST_URI")-1, &temp);
			}
		}
	}

	if (FUNC1(phar_SERVER_mung_list) & PHAR_MUNG_PHP_SELF) {
		if (NULL != (stuff = FUNC13(_SERVER, "PHP_SELF", sizeof("PHP_SELF")-1))) {
			path_info = FUNC7(stuff);
			code = FUNC6(stuff);

			if (code > basename_len && !FUNC10(path_info, basename, basename_len)) {
				FUNC3(&temp, FUNC8(stuff));
				FUNC4(stuff, path_info + basename_len, code - basename_len);
				FUNC14(_SERVER, "PHAR_PHP_SELF", sizeof("PHAR_PHP_SELF")-1, &temp);
			}
		}
	}

	if (FUNC1(phar_SERVER_mung_list) & PHAR_MUNG_SCRIPT_NAME) {
		if (NULL != (stuff = FUNC13(_SERVER, "SCRIPT_NAME", sizeof("SCRIPT_NAME")-1))) {
			FUNC3(&temp, FUNC8(stuff));
			FUNC4(stuff, entry, entry_len);
			FUNC14(_SERVER, "PHAR_SCRIPT_NAME", sizeof("PHAR_SCRIPT_NAME")-1, &temp);
		}
	}

	if (FUNC1(phar_SERVER_mung_list) & PHAR_MUNG_SCRIPT_FILENAME) {
		if (NULL != (stuff = FUNC13(_SERVER, "SCRIPT_FILENAME", sizeof("SCRIPT_FILENAME")-1))) {
			zend_string *str = FUNC12(4096, "phar://%s%s", fname, entry);

			FUNC3(&temp, FUNC8(stuff));
			FUNC2(stuff, str);

			FUNC14(_SERVER, "PHAR_SCRIPT_FILENAME", sizeof("PHAR_SCRIPT_FILENAME")-1, &temp);
		}
	}
}