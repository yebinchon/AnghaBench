#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  php_serialize_data_t ;
struct TYPE_8__ {int /*<<< orphan*/ * s; } ;
struct TYPE_7__ {scalar_t__ fp_type; int is_modified; int /*<<< orphan*/  filename_len; int /*<<< orphan*/  filename; TYPE_1__* phar; TYPE_3__ metadata_str; int /*<<< orphan*/ * fp; scalar_t__ offset_abs; scalar_t__ offset; scalar_t__ compressed_filesize; scalar_t__ uncompressed_filesize; } ;
typedef  TYPE_2__ phar_entry_info ;
struct TYPE_6__ {int /*<<< orphan*/  manifest; } ;

/* Variables and functions */
 scalar_t__ PHAR_MOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ZEND_HASH_APPLY_KEEP ; 
 int ZEND_HASH_APPLY_STOP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (char**,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(zval *metadata, phar_entry_info *entry, char **error) /* {{{ */
{
	php_serialize_data_t metadata_hash;

	if (entry->metadata_str.s) {
		FUNC8(&entry->metadata_str);
	}

	entry->metadata_str.s = NULL;
	FUNC1(metadata_hash);
	FUNC7(&entry->metadata_str, metadata, &metadata_hash);
	FUNC0(metadata_hash);
	entry->uncompressed_filesize = entry->compressed_filesize = entry->metadata_str.s ? FUNC2(entry->metadata_str.s) : 0;

	if (entry->fp && entry->fp_type == PHAR_MOD) {
		FUNC4(entry->fp);
	}

	entry->fp_type = PHAR_MOD;
	entry->is_modified = 1;
	entry->fp = FUNC5();
	entry->offset = entry->offset_abs = 0;
	if (entry->fp == NULL) {
		FUNC9(error, 0, "phar error: unable to create temporary file");
		return -1;
	}
	if (FUNC2(entry->metadata_str.s) != FUNC6(entry->fp, FUNC3(entry->metadata_str.s), FUNC2(entry->metadata_str.s))) {
		FUNC9(error, 0, "phar tar error: unable to write metadata to magic metadata file \"%s\"", entry->filename);
		FUNC10(&(entry->phar->manifest), entry->filename, entry->filename_len);
		return ZEND_HASH_APPLY_STOP;
	}

	return ZEND_HASH_APPLY_KEEP;
}