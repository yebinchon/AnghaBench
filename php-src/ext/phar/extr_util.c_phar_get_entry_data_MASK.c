#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ fp_type; char tar_type; TYPE_1__* phar; scalar_t__ fp_refcount; TYPE_3__* link; scalar_t__ is_tar; int /*<<< orphan*/  is_zip; scalar_t__ is_dir; scalar_t__ is_deleted; scalar_t__ is_modified; } ;
typedef  TYPE_2__ phar_entry_info ;
struct TYPE_24__ {int for_write; void* zero; int /*<<< orphan*/ * fp; scalar_t__ is_tar; int /*<<< orphan*/  is_zip; TYPE_2__* internal_file; TYPE_4__* phar; scalar_t__ position; } ;
typedef  TYPE_3__ phar_entry_data ;
struct TYPE_25__ {scalar_t__ is_persistent; scalar_t__ is_data; } ;
typedef  TYPE_4__ phar_archive_data ;
struct TYPE_22__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PHAR_MOD ; 
 int /*<<< orphan*/  SEEK_END ; 
 int SUCCESS ; 
 char TAR_FILE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (TYPE_4__**) ; 
 int FUNC4 (TYPE_4__*,TYPE_2__*,char**) ; 
 int FUNC5 (TYPE_4__**,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC7 (TYPE_4__*,char*,size_t,char**,int) ; 
 TYPE_2__* FUNC8 (TYPE_4__*,char*,size_t,char,char**,int) ; 
 void* FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*,char**,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,char**) ; 
 int /*<<< orphan*/  readonly ; 
 int /*<<< orphan*/  FUNC14 (char**,int,char*,char*,...) ; 

int FUNC15(phar_entry_data **ret, char *fname, size_t fname_len, char *path, size_t path_len, const char *mode, char allow_dir, char **error, int security) /* {{{ */
{
	phar_archive_data *phar;
	phar_entry_info *entry;
	int for_write  = mode[0] != 'r' || mode[1] == '+';
	int for_append = mode[0] == 'a';
	int for_create = mode[0] != 'r';
	int for_trunc  = mode[0] == 'w';

	if (!ret) {
		return FAILURE;
	}

	*ret = NULL;

	if (error) {
		*error = NULL;
	}

	if (FAILURE == FUNC5(&phar, fname, fname_len, NULL, 0, error)) {
		return FAILURE;
	}

	if (for_write && FUNC0(readonly) && !phar->is_data) {
		if (error) {
			FUNC14(error, 4096, "phar error: file \"%s\" in phar \"%s\" cannot be opened for writing, disabled by ini setting", path, fname);
		}
		return FAILURE;
	}

	if (!path_len) {
		if (error) {
			FUNC14(error, 4096, "phar error: file \"\" in phar \"%s\" cannot be empty", fname);
		}
		return FAILURE;
	}
really_get_entry:
	if (allow_dir) {
		if ((entry = FUNC8(phar, path, path_len, allow_dir, for_create && !FUNC0(readonly) && !phar->is_data ? NULL : error, security)) == NULL) {
			if (for_create && (!FUNC0(readonly) || phar->is_data)) {
				return SUCCESS;
			}
			return FAILURE;
		}
	} else {
		if ((entry = FUNC7(phar, path, path_len, for_create && !FUNC0(readonly) && !phar->is_data ? NULL : error, security)) == NULL) {
			if (for_create && (!FUNC0(readonly) || phar->is_data)) {
				return SUCCESS;
			}
			return FAILURE;
		}
	}

	if (for_write && phar->is_persistent) {
		if (FAILURE == FUNC3(&phar)) {
			if (error) {
				FUNC14(error, 4096, "phar error: file \"%s\" in phar \"%s\" cannot be opened for writing, could not make cached phar writeable", path, fname);
			}
			return FAILURE;
		} else {
			goto really_get_entry;
		}
	}

	if (entry->is_modified && !for_write) {
		if (error) {
			FUNC14(error, 4096, "phar error: file \"%s\" in phar \"%s\" cannot be opened for reading, writable file pointers are open", path, fname);
		}
		return FAILURE;
	}

	if (entry->fp_refcount && for_write) {
		if (error) {
			FUNC14(error, 4096, "phar error: file \"%s\" in phar \"%s\" cannot be opened for writing, readable file pointers are open", path, fname);
		}
		return FAILURE;
	}

	if (entry->is_deleted) {
		if (!for_create) {
			return FAILURE;
		}
		entry->is_deleted = 0;
	}

	if (entry->is_dir) {
		*ret = (phar_entry_data *) FUNC2(sizeof(phar_entry_data));
		(*ret)->position = 0;
		(*ret)->fp = NULL;
		(*ret)->phar = phar;
		(*ret)->for_write = for_write;
		(*ret)->internal_file = entry;
		(*ret)->is_zip = entry->is_zip;
		(*ret)->is_tar = entry->is_tar;

		if (!phar->is_persistent) {
			++(entry->phar->refcount);
			++(entry->fp_refcount);
		}

		return SUCCESS;
	}

	if (entry->fp_type == PHAR_MOD) {
		if (for_trunc) {
			if (FAILURE == FUNC4(phar, entry, error)) {
				return FAILURE;
			}
		} else if (for_append) {
			FUNC12(entry, 0, SEEK_END, 0, 0);
		}
	} else {
		if (for_write) {
			if (entry->link) {
				FUNC1(entry->link);
				entry->link = NULL;
				entry->tar_type = (entry->is_tar ? TAR_FILE : '\0');
			}

			if (for_trunc) {
				if (FAILURE == FUNC4(phar, entry, error)) {
					return FAILURE;
				}
			} else {
				if (FAILURE == FUNC13(entry, error)) {
					return FAILURE;
				}
			}
		} else {
			if (FAILURE == FUNC11(entry, error, 1)) {
				return FAILURE;
			}
		}
	}

	*ret = (phar_entry_data *) FUNC2(sizeof(phar_entry_data));
	(*ret)->position = 0;
	(*ret)->phar = phar;
	(*ret)->for_write = for_write;
	(*ret)->internal_file = entry;
	(*ret)->is_zip = entry->is_zip;
	(*ret)->is_tar = entry->is_tar;
	(*ret)->fp = FUNC6(entry, 1);
	if (entry->link) {
		phar_entry_info *link = FUNC10(entry);
		if(!link) {
			FUNC1(*ret);
			return FAILURE;
		}
		(*ret)->zero = FUNC9(link);
	} else {
		(*ret)->zero = FUNC9(entry);
	}

	if (!phar->is_persistent) {
		++(entry->fp_refcount);
		++(entry->phar->refcount);
	}

	return SUCCESS;
}