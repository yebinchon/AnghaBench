#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_off_t ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_10__ {scalar_t__ fp_type; int /*<<< orphan*/  offset; int /*<<< orphan*/ * fp; int /*<<< orphan*/ * cfp; int /*<<< orphan*/  filename; TYPE_1__* phar; int /*<<< orphan*/  uncompressed_filesize; } ;
typedef  TYPE_2__ phar_entry_info ;
struct TYPE_9__ {int /*<<< orphan*/  fname; } ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ PHAR_FP ; 
 scalar_t__ PHAR_MOD ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spl_ce_UnexpectedValueException ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC8(phar_entry_info *entry, php_stream *fp) /* {{{ */
{
	char *error;
	zend_off_t offset;
	phar_entry_info *link;

	if (FAILURE == FUNC3(entry, &error, 1)) {
		if (error) {
			FUNC7(spl_ce_UnexpectedValueException, 0,
				"Cannot convert phar archive \"%s\", unable to open entry \"%s\" contents: %s", entry->phar->fname, entry->filename, error);
			FUNC0(error);
		} else {
			FUNC7(spl_ce_UnexpectedValueException, 0,
				"Cannot convert phar archive \"%s\", unable to open entry \"%s\" contents", entry->phar->fname, entry->filename);
		}
		return FAILURE;
	}

	/* copy old contents in entirety */
	FUNC4(entry, 0, SEEK_SET, 0, 1);
	offset = FUNC6(fp);
	link = FUNC2(entry);

	if (!link) {
		link = entry;
	}

	if (SUCCESS != FUNC5(FUNC1(link, 0), fp, link->uncompressed_filesize, NULL)) {
		FUNC7(spl_ce_UnexpectedValueException, 0,
			"Cannot convert phar archive \"%s\", unable to copy entry \"%s\" contents", entry->phar->fname, entry->filename);
		return FAILURE;
	}

	if (entry->fp_type == PHAR_MOD) {
		/* save for potential restore on error */
		entry->cfp = entry->fp;
		entry->fp = NULL;
	}

	/* set new location of file contents */
	entry->fp_type = PHAR_FP;
	entry->offset = offset;
	return SUCCESS;
}