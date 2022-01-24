#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_bool ;
typedef  int /*<<< orphan*/  php_stream_statbuf ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_8__ {int filename_len; char* filename; int flags; int /*<<< orphan*/  uncompressed_filesize; scalar_t__ is_dir; scalar_t__ is_mounted; } ;
typedef  TYPE_1__ phar_entry_info ;
typedef  int mode_t ;
struct TYPE_9__ {char* cwd; int cwd_length; } ;
typedef  TYPE_2__ cwd_state ;

/* Variables and functions */
 int /*<<< orphan*/  CWD_EXPAND ; 
 char DEFAULT_SLASH ; 
 scalar_t__ EINVAL ; 
 int FAILURE ; 
 size_t MAXPATHLEN ; 
 int PHAR_ENT_PERM_MASK ; 
 int /*<<< orphan*/  PHP_STREAM_MKDIR_RECURSIVE ; 
 int /*<<< orphan*/  REPORT_ERRORS ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ errno ; 
 char* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,char**,int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (char*,int /*<<< orphan*/ *) ; 
 size_t FUNC14 (char**,int,char*,char*,...) ; 
 scalar_t__ FUNC15 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*,char,size_t) ; 

__attribute__((used)) static int FUNC17(zend_bool overwrite, phar_entry_info *entry, char *dest, size_t dest_len, char **error) /* {{{ */
{
	php_stream_statbuf ssb;
	size_t len;
	php_stream *fp;
	char *fullpath;
	const char *slash;
	mode_t mode;
	cwd_state new_state;
	char *filename;
	size_t filename_len;

	if (entry->is_mounted) {
		/* silently ignore mounted entries */
		return SUCCESS;
	}

	if (entry->filename_len >= sizeof(".phar")-1 && !FUNC4(entry->filename, ".phar", sizeof(".phar")-1)) {
		return SUCCESS;
	}
	/* strip .. from path and restrict it to be under dest directory */
	new_state.cwd = (char*)FUNC2(2);
	new_state.cwd[0] = DEFAULT_SLASH;
	new_state.cwd[1] = '\0';
	new_state.cwd_length = 1;
	if (FUNC15(&new_state, entry->filename, NULL, CWD_EXPAND) != 0 ||
			new_state.cwd_length <= 1) {
		if (EINVAL == errno && entry->filename_len > 50) {
			char *tmp = FUNC3(entry->filename, 50);
			FUNC14(error, 4096, "Cannot extract \"%s...\" to \"%s...\", extracted filename is too long for filesystem", tmp, dest);
			FUNC1(tmp);
		} else {
			FUNC14(error, 4096, "Cannot extract \"%s\", internal error", entry->filename);
		}
		FUNC1(new_state.cwd);
		return FAILURE;
	}
	filename = new_state.cwd + 1;
	filename_len = new_state.cwd_length - 1;
#ifdef PHP_WIN32
	/* unixify the path back, otherwise non zip formats might be broken */
	{
		size_t cnt = 0;

		do {
			if ('\\' == filename[cnt]) {
				filename[cnt] = '/';
			}
		} while (cnt++ <= filename_len);
	}
#endif

	len = FUNC14(&fullpath, 0, "%s/%s", dest, filename);

	if (len >= MAXPATHLEN) {
		char *tmp;
		/* truncate for error message */
		fullpath[50] = '\0';
		if (entry->filename_len > 50) {
			tmp = FUNC3(entry->filename, 50);
			FUNC14(error, 4096, "Cannot extract \"%s...\" to \"%s...\", extracted filename is too long for filesystem", tmp, fullpath);
			FUNC1(tmp);
		} else {
			FUNC14(error, 4096, "Cannot extract \"%s\" to \"%s...\", extracted filename is too long for filesystem", entry->filename, fullpath);
		}
		FUNC1(fullpath);
		FUNC1(new_state.cwd);
		return FAILURE;
	}

	if (!len) {
		FUNC14(error, 4096, "Cannot extract \"%s\", internal error", entry->filename);
		FUNC1(fullpath);
		FUNC1(new_state.cwd);
		return FAILURE;
	}

	if (FUNC8(fullpath)) {
		FUNC14(error, 4096, "Cannot extract \"%s\" to \"%s\", openbasedir/safe mode restrictions in effect", entry->filename, fullpath);
		FUNC1(fullpath);
		FUNC1(new_state.cwd);
		return FAILURE;
	}

	/* let see if the path already exists */
	if (!overwrite && SUCCESS == FUNC13(fullpath, &ssb)) {
		FUNC14(error, 4096, "Cannot extract \"%s\" to \"%s\", path already exists", entry->filename, fullpath);
		FUNC1(fullpath);
		FUNC1(new_state.cwd);
		return FAILURE;
	}

	/* perform dirname */
	slash = FUNC16(filename, '/', filename_len);

	if (slash) {
		fullpath[dest_len + (slash - filename) + 1] = '\0';
	} else {
		fullpath[dest_len] = '\0';
	}

	if (FAILURE == FUNC13(fullpath, &ssb)) {
		if (entry->is_dir) {
			if (!FUNC11(fullpath, entry->flags & PHAR_ENT_PERM_MASK,  PHP_STREAM_MKDIR_RECURSIVE, NULL)) {
				FUNC14(error, 4096, "Cannot extract \"%s\", could not create directory \"%s\"", entry->filename, fullpath);
				FUNC1(fullpath);
				FUNC1(new_state.cwd);
				return FAILURE;
			}
		} else {
			if (!FUNC11(fullpath, 0777,  PHP_STREAM_MKDIR_RECURSIVE, NULL)) {
				FUNC14(error, 4096, "Cannot extract \"%s\", could not create directory \"%s\"", entry->filename, fullpath);
				FUNC1(fullpath);
				FUNC1(new_state.cwd);
				return FAILURE;
			}
		}
	}

	if (slash) {
		fullpath[dest_len + (slash - filename) + 1] = '/';
	} else {
		fullpath[dest_len] = '/';
	}

	filename = NULL;
	FUNC1(new_state.cwd);
	/* it is a standalone directory, job done */
	if (entry->is_dir) {
		FUNC1(fullpath);
		return SUCCESS;
	}

	fp = FUNC12(fullpath, "w+b", REPORT_ERRORS, NULL);

	if (!fp) {
		FUNC14(error, 4096, "Cannot extract \"%s\", could not open for writing \"%s\"", entry->filename, fullpath);
		FUNC1(fullpath);
		return FAILURE;
	}

	if (!FUNC5(entry, 0)) {
		if (FAILURE == FUNC6(entry, error, 1)) {
			if (error) {
				FUNC14(error, 4096, "Cannot extract \"%s\" to \"%s\", unable to open internal file pointer: %s", entry->filename, fullpath, *error);
			} else {
				FUNC14(error, 4096, "Cannot extract \"%s\" to \"%s\", unable to open internal file pointer", entry->filename, fullpath);
			}
			FUNC1(fullpath);
			FUNC9(fp);
			return FAILURE;
		}
	}

	if (FAILURE == FUNC7(entry, 0, SEEK_SET, 0, 0)) {
		FUNC14(error, 4096, "Cannot extract \"%s\" to \"%s\", unable to seek internal file pointer", entry->filename, fullpath);
		FUNC1(fullpath);
		FUNC9(fp);
		return FAILURE;
	}

	if (SUCCESS != FUNC10(FUNC5(entry, 0), fp, entry->uncompressed_filesize, NULL)) {
		FUNC14(error, 4096, "Cannot extract \"%s\" to \"%s\", copying contents failed", entry->filename, fullpath);
		FUNC1(fullpath);
		FUNC9(fp);
		return FAILURE;
	}

	FUNC9(fp);
	mode = (mode_t) entry->flags & PHAR_ENT_PERM_MASK;

	if (FAILURE == FUNC0(fullpath, mode)) {
		FUNC14(error, 4096, "Cannot extract \"%s\" to \"%s\", setting file permissions failed", entry->filename, fullpath);
		FUNC1(fullpath);
		return FAILURE;
	}

	FUNC1(fullpath);
	return SUCCESS;
}