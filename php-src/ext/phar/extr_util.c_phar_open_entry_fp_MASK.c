#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zend_off_t ;
typedef  int /*<<< orphan*/  php_stream_filter ;
struct TYPE_24__ {int /*<<< orphan*/  writefilters; } ;
typedef  TYPE_1__ php_stream ;
struct TYPE_25__ {scalar_t__ fp_type; int old_flags; int flags; int /*<<< orphan*/  crc32; int /*<<< orphan*/  offset; int /*<<< orphan*/  filename; scalar_t__ uncompressed_filesize; int /*<<< orphan*/  compressed_filesize; int /*<<< orphan*/  tmp; scalar_t__ fp; scalar_t__ is_modified; scalar_t__ link; TYPE_4__* phar; } ;
typedef  TYPE_2__ phar_entry_info ;
struct TYPE_26__ {TYPE_1__* fp; int /*<<< orphan*/  zero; TYPE_4__* phar; TYPE_2__* internal_file; } ;
typedef  TYPE_3__ phar_entry_data ;
struct TYPE_27__ {int /*<<< orphan*/  fname; } ;
typedef  TYPE_4__ phar_archive_data ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int PHAR_ENT_COMPRESSION_MASK ; 
 scalar_t__ PHAR_FP ; 
 scalar_t__ PHAR_TMP ; 
 int /*<<< orphan*/  PHAR_UFP ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int STREAM_MUST_SEEK ; 
 int SUCCESS ; 
 char* FUNC0 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (char**,int,char*,int /*<<< orphan*/ ,...) ; 

int FUNC21(phar_entry_info *entry, char **error, int follow_links) /* {{{ */
{
	php_stream_filter *filter;
	phar_archive_data *phar = entry->phar;
	char *filtername;
	zend_off_t loc;
	php_stream *ufp;
	phar_entry_data dummy;

	if (follow_links && entry->link) {
		phar_entry_info *link_entry = FUNC4(entry);
		if (link_entry && link_entry != entry) {
			return FUNC21(link_entry, error, 1);
		}
	}

	if (entry->is_modified) {
		return SUCCESS;
	}

	if (entry->fp_type == PHAR_TMP) {
		if (!entry->fp) {
			entry->fp = FUNC17(entry->tmp, "rb", STREAM_MUST_SEEK|0, NULL);
		}
		return SUCCESS;
	}

	if (entry->fp_type != PHAR_FP) {
		/* either newly created or already modified */
		return SUCCESS;
	}

	if (!FUNC5(phar)) {
		if (FAILURE == FUNC6(phar)) {
			FUNC20(error, 4096, "phar error: Cannot open phar archive \"%s\" for reading", phar->fname);
			return FAILURE;
		}
	}

	if ((entry->old_flags && !(entry->old_flags & PHAR_ENT_COMPRESSION_MASK)) || !(entry->flags & PHAR_ENT_COMPRESSION_MASK)) {
		dummy.internal_file = entry;
		dummy.phar = phar;
		dummy.zero = entry->offset;
		dummy.fp = FUNC5(phar);
		if (FAILURE == FUNC7(&dummy, entry->crc32, error, 1)) {
			return FAILURE;
		}
		return SUCCESS;
	}

	if (!FUNC2(entry)) {
		FUNC8(entry, FUNC16());
		if (!FUNC2(entry)) {
			FUNC20(error, 4096, "phar error: Cannot open temporary file for decompressing phar archive \"%s\" file \"%s\"", phar->fname, entry->filename);
			return FAILURE;
		}
	}

	dummy.internal_file = entry;
	dummy.phar = phar;
	dummy.zero = entry->offset;
	dummy.fp = FUNC5(phar);
	if (FAILURE == FUNC7(&dummy, entry->crc32, error, 1)) {
		return FAILURE;
	}

	ufp = FUNC2(entry);

	if ((filtername = FUNC0(entry, 0)) != NULL) {
		filter = FUNC12(filtername, NULL, 0);
	} else {
		filter = NULL;
	}

	if (!filter) {
		FUNC20(error, 4096, "phar error: unable to read phar \"%s\" (cannot create %s filter while decompressing file \"%s\")", phar->fname, FUNC0(entry, 1), entry->filename);
		return FAILURE;
	}

	/* now we can safely use proper decompression */
	/* save the new offset location within ufp */
	FUNC18(ufp, 0, SEEK_END);
	loc = FUNC19(ufp);
	FUNC11(&ufp->writefilters, filter);
	FUNC18(FUNC1(entry), FUNC3(entry), SEEK_SET);

	if (entry->uncompressed_filesize) {
		if (SUCCESS != FUNC10(FUNC1(entry), ufp, entry->compressed_filesize, NULL)) {
			FUNC20(error, 4096, "phar error: internal corruption of phar \"%s\" (actual filesize mismatch on file \"%s\")", phar->fname, entry->filename);
			FUNC14(filter, 1);
			return FAILURE;
		}
	}

	FUNC13(filter, 1);
	FUNC15(ufp);
	FUNC14(filter, 1);

	if (FUNC19(ufp) - loc != (zend_off_t) entry->uncompressed_filesize) {
		FUNC20(error, 4096, "phar error: internal corruption of phar \"%s\" (actual filesize mismatch on file \"%s\")", phar->fname, entry->filename);
		return FAILURE;
	}

	entry->old_flags = entry->flags;

	/* this is now the new location of the file contents within this fp */
	FUNC9(entry, PHAR_UFP, loc);
	dummy.zero = entry->offset;
	dummy.fp = ufp;
	if (FAILURE == FUNC7(&dummy, entry->crc32, error, 0)) {
		return FAILURE;
	}
	return SUCCESS;
}