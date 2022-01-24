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
struct zip_stat {int dummy; } ;
struct zip_file {int dummy; } ;
struct zip {int dummy; } ;
typedef  int /*<<< orphan*/  php_stream_statbuf ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_3__ {char* cwd; scalar_t__ cwd_length; } ;
typedef  TYPE_1__ cwd_state ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int /*<<< orphan*/  CWD_EXPAND ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FUNC2 (char) ; 
 int MAXPATHLEN ; 
 int PHP_STREAM_MKDIR_RECURSIVE ; 
 int /*<<< orphan*/  PHP_STREAM_URL_STAT_QUIET ; 
 int REPORT_ERRORS ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC15 (char*,scalar_t__) ; 
 size_t FUNC16 (char**,int /*<<< orphan*/ ,char*,char*,...) ; 
 size_t FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct zip_file*) ; 
 struct zip_file* FUNC21 (struct zip*,char*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct zip_file*,char*,int) ; 
 scalar_t__ FUNC23 (struct zip*,char*,int /*<<< orphan*/ ,struct zip_stat*) ; 

__attribute__((used)) static int FUNC24(struct zip * za, char *dest, char *file, size_t file_len)
{
	php_stream_statbuf ssb;
	struct zip_file *zf;
	struct zip_stat sb;
	char b[8192];
	int n, ret;
	php_stream *stream;
	char *fullpath;
	char *file_dirname_fullpath;
	char file_dirname[MAXPATHLEN];
	size_t dir_len, len;
	int is_dir_only = 0;
	char *path_cleaned;
	size_t path_cleaned_len;
	cwd_state new_state;
	zend_string *file_basename;

	new_state.cwd = FUNC0(1);
	new_state.cwd[0] = '\0';
	new_state.cwd_length = 0;

	/* Clean/normlize the path and then transform any path (absolute or relative)
		 to a path relative to cwd (../../mydir/foo.txt > mydir/foo.txt)
	 */
	FUNC18(&new_state, file, NULL, CWD_EXPAND);
	path_cleaned =  FUNC15(new_state.cwd, new_state.cwd_length);
	if(!path_cleaned) {
		return 0;
	}
	path_cleaned_len = FUNC17(path_cleaned);

	if (path_cleaned_len >= MAXPATHLEN || FUNC23(za, file, 0, &sb) != 0) {
		return 0;
	}

	/* it is a directory only, see #40228 */
	if (path_cleaned_len > 1 && FUNC2(path_cleaned[path_cleaned_len - 1])) {
		len = FUNC16(&file_dirname_fullpath, 0, "%s/%s", dest, path_cleaned);
		is_dir_only = 1;
	} else {
		FUNC6(file_dirname, path_cleaned, path_cleaned_len);
		dir_len = FUNC8(file_dirname, path_cleaned_len);

		if (!dir_len || (dir_len == 1 && file_dirname[0] == '.')) {
			len = FUNC16(&file_dirname_fullpath, 0, "%s", dest);
		} else {
			len = FUNC16(&file_dirname_fullpath, 0, "%s/%s", dest, file_dirname);
		}

		file_basename =	FUNC7(path_cleaned, path_cleaned_len, NULL, 0);

		if (FUNC3(file_dirname_fullpath)) {
			FUNC5(file_dirname_fullpath);
			FUNC19(file_basename, 0);
			FUNC1(new_state.cwd);
			return 0;
		}
	}

	/* let see if the path already exists */
	if (FUNC13(file_dirname_fullpath, PHP_STREAM_URL_STAT_QUIET, &ssb, NULL) < 0) {
		ret = FUNC11(file_dirname_fullpath, 0777,  PHP_STREAM_MKDIR_RECURSIVE|REPORT_ERRORS, NULL);
		if (!ret) {
			FUNC5(file_dirname_fullpath);
			if (!is_dir_only) {
				FUNC19(file_basename, 0);
				FUNC1(new_state.cwd);
			}
			return 0;
		}
	}

	/* it is a standalone directory, job done */
	if (is_dir_only) {
		FUNC5(file_dirname_fullpath);
		FUNC1(new_state.cwd);
		return 1;
	}

	len = FUNC16(&fullpath, 0, "%s/%s", file_dirname_fullpath, FUNC4(file_basename));
	if (!len) {
		FUNC5(file_dirname_fullpath);
		FUNC19(file_basename, 0);
		FUNC1(new_state.cwd);
		return 0;
	} else if (len > MAXPATHLEN) {
		FUNC9(NULL, E_WARNING, "Full extraction path exceed MAXPATHLEN (%i)", MAXPATHLEN);
		FUNC5(file_dirname_fullpath);
		FUNC19(file_basename, 0);
		FUNC1(new_state.cwd);
		return 0;
	}

	/* check again the full path, not sure if it
	 * is required, does a file can have a different
	 * safemode status as its parent folder?
	 */
	if (FUNC3(fullpath)) {
		FUNC5(fullpath);
		FUNC5(file_dirname_fullpath);
		FUNC19(file_basename, 0);
		FUNC1(new_state.cwd);
		return 0;
	}

	zf = FUNC21(za, file, 0);
	if (zf == NULL) {
		n = -1;
		goto done;
	}

	stream = FUNC12(fullpath, "w+b", REPORT_ERRORS, NULL);

	if (stream == NULL) {
		n = -1;
		FUNC20(zf);
		goto done;
	}

	n = 0;

	while ((n=FUNC22(zf, b, sizeof(b))) > 0) {
		FUNC14(stream, b, n);
	}

	FUNC10(stream);
	n = FUNC20(zf);

done:
	FUNC5(fullpath);
	FUNC19(file_basename, 0);
	FUNC5(file_dirname_fullpath);
	FUNC1(new_state.cwd);

	if (n<0) {
		return 0;
	} else {
		return 1;
	}
}