#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int st_mode; int /*<<< orphan*/  st_size; } ;
struct TYPE_8__ {TYPE_1__ sb; } ;
typedef  TYPE_2__ php_stream_statbuf ;
struct TYPE_9__ {char* filename; size_t filename_len; char* tmp; int is_mounted; int is_crc_checked; int is_dir; int flags; int /*<<< orphan*/  compressed_filesize; int /*<<< orphan*/  uncompressed_filesize; int /*<<< orphan*/  fp_type; TYPE_4__* phar; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ phar_entry_info ;
struct TYPE_10__ {int /*<<< orphan*/  manifest; int /*<<< orphan*/  mounted_dirs; } ;
typedef  TYPE_4__ phar_archive_data ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  PHAR_TMP ; 
 scalar_t__ SUCCESS ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*,size_t) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ pcr_is_ok ; 
 scalar_t__ FUNC4 (char**,size_t*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,size_t,void*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,size_t,char*) ; 

int FUNC10(phar_archive_data *phar, char *filename, size_t filename_len, char *path, size_t path_len) /* {{{ */
{
	phar_entry_info entry = {0};
	php_stream_statbuf ssb;
	int is_phar;
	const char *err;

	if (FUNC4(&path, &path_len, &err) > pcr_is_ok) {
		return FAILURE;
	}

	if (path_len >= sizeof(".phar")-1 && !FUNC3(path, ".phar", sizeof(".phar")-1)) {
		/* no creating magic phar files by mounting them */
		return FAILURE;
	}

	is_phar = (filename_len > 7 && !FUNC3(filename, "phar://", 7));

	entry.phar = phar;
	entry.filename = FUNC1(path, path_len);
#ifdef PHP_WIN32
	phar_unixify_path_separators(entry.filename, path_len);
#endif
	entry.filename_len = path_len;
	if (is_phar) {
		entry.tmp = FUNC1(filename, filename_len);
	} else {
		entry.tmp = FUNC2(filename, NULL);
		if (!entry.tmp) {
			entry.tmp = FUNC1(filename, filename_len);
		}
	}
	filename = entry.tmp;

	/* only check openbasedir for files, not for phar streams */
	if (!is_phar && FUNC6(filename)) {
		FUNC0(entry.tmp);
		FUNC0(entry.filename);
		return FAILURE;
	}

	entry.is_mounted = 1;
	entry.is_crc_checked = 1;
	entry.fp_type = PHAR_TMP;

	if (SUCCESS != FUNC7(filename, &ssb)) {
		FUNC0(entry.tmp);
		FUNC0(entry.filename);
		return FAILURE;
	}

	if (ssb.sb.st_mode & S_IFDIR) {
		entry.is_dir = 1;
		if (NULL == FUNC9(&phar->mounted_dirs, entry.filename, path_len, entry.filename)) {
			/* directory already mounted */
			FUNC0(entry.tmp);
			FUNC0(entry.filename);
			return FAILURE;
		}
	} else {
		entry.is_dir = 0;
		entry.uncompressed_filesize = entry.compressed_filesize = ssb.sb.st_size;
	}

	entry.flags = ssb.sb.st_mode;

	if (NULL != FUNC8(&phar->manifest, entry.filename, path_len, (void*)&entry, sizeof(phar_entry_info))) {
		return SUCCESS;
	}

	FUNC0(entry.tmp);
	FUNC0(entry.filename);
	return FAILURE;
}