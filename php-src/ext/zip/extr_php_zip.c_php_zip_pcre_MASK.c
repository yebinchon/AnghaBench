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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_3__ {int st_mode; } ;
typedef  TYPE_1__ zend_stat_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  pcre2_match_data ;
typedef  int /*<<< orphan*/  pcre2_match_context ;
typedef  int /*<<< orphan*/  pcre2_code ;
typedef  int /*<<< orphan*/  PCRE2_SPTR ;

/* Variables and functions */
 char* DEFAULT_SLASH ; 
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char) ; 
 int MAXPATHLEN ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 char* FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (char*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 scalar_t__ php_stream_dirent_alphasort ; 
 int FUNC16 (char*,int /*<<< orphan*/ ***,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC19(zend_string *regexp, char *path, int path_len, zval *return_value) /* {{{ */
{
#ifdef ZTS
	char cwd[MAXPATHLEN];
	char work_path[MAXPATHLEN];
	char *result;
#endif
	int files_cnt;
	zend_string **namelist;
	pcre2_match_context *mctx = FUNC15();

#ifdef ZTS
	if (!IS_ABSOLUTE_PATH(path, path_len)) {
		result = VCWD_GETCWD(cwd, MAXPATHLEN);
		if (!result) {
			cwd[0] = '\0';
		}
#ifdef PHP_WIN32
		if (IS_SLASH(*path)) {
			cwd[2] = '\0';
		}
#endif
		snprintf(work_path, MAXPATHLEN, "%s%c%s", cwd, DEFAULT_SLASH, path);
		path = work_path;
	}
#endif

	if (FUNC4(path)) {
		return -1;
	}

	files_cnt = FUNC16(path, &namelist, NULL, (void *) php_stream_dirent_alphasort);

	if (files_cnt > 0) {
		pcre2_code *re = NULL;
		pcre2_match_data *match_data = NULL;
		uint32_t i, capture_count;
		int rc;

		re = FUNC11(regexp, &capture_count);
		if (!re) {
			FUNC12(NULL, E_WARNING, "Invalid expression");
			return -1;
		}

		FUNC8(return_value);

		/* only the files, directories are ignored */
		for (i = 0; i < files_cnt; i++) {
			zend_stat_t s;
			char   fullpath[MAXPATHLEN];
			size_t    namelist_len = FUNC5(namelist[i]);

			if ((namelist_len == 1 && FUNC6(namelist[i])[0] == '.') ||
				(namelist_len == 2 && FUNC6(namelist[i])[0] == '.' && FUNC6(namelist[i])[1] == '.')) {
				FUNC18(namelist[i], 0);
				continue;
			}

			if ((path_len + namelist_len + 1) >= MAXPATHLEN) {
				FUNC12(NULL, E_WARNING, "add_path string too long (max: %u, %zu given)",
						MAXPATHLEN - 1, (path_len + namelist_len + 1));
				FUNC18(namelist[i], 0);
				break;
			}

			match_data = FUNC13(capture_count, re);
			if (!match_data) {
				/* Allocation failed, but can proceed to the next pattern. */
				FUNC18(namelist[i], 0);
				continue;
			}
			rc = FUNC10(re, (PCRE2_SPTR)FUNC6(namelist[i]), FUNC5(namelist[i]), 0, 0, match_data, mctx);
			FUNC14(match_data);
			/* 0 means that the vector is too small to hold all the captured substring offsets */
			if (rc < 0) {
				FUNC18(namelist[i], 0);
				continue;
			}

			FUNC17(fullpath, MAXPATHLEN, "%s%c%s", path, DEFAULT_SLASH, FUNC6(namelist[i]));

			if (0 != FUNC3(fullpath, &s)) {
				FUNC12(NULL, E_WARNING, "Cannot read <%s>", fullpath);
				FUNC18(namelist[i], 0);
				continue;
			}

			if (S_IFDIR == (s.st_mode & S_IFMT)) {
				FUNC18(namelist[i], 0);
				continue;
			}

			FUNC7(return_value, fullpath);
			FUNC18(namelist[i], 0);
		}
		FUNC9(namelist);
	}
	return files_cnt;
}