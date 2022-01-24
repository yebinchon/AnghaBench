#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_12__ {scalar_t__ nNumOfElements; } ;
typedef  TYPE_1__ HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FAILURE ; 
 scalar_t__ HASH_KEY_NON_EXISTENT ; 
 scalar_t__ SUCCESS ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char,size_t) ; 
 scalar_t__ FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  phar_compare_dir_name ; 
 int /*<<< orphan*/  phar_dir_ops ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (size_t,int,int) ; 
 size_t FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,size_t) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static php_stream *FUNC18(char *dir, HashTable *manifest) /* {{{ */
{
	HashTable *data;
	size_t dirlen = FUNC10(dir);
	char *entry, *found, *save;
	zend_string *str_key;
	size_t keylen;
	zend_ulong unused;

	FUNC0(data);
	FUNC14(data, 64, NULL, NULL, 0);

	if ((*dir == '/' && dirlen == 1 && (manifest->nNumOfElements == 0)) || (dirlen >= sizeof(".phar")-1 && !FUNC5(dir, ".phar", sizeof(".phar")-1))) {
		/* make empty root directory for empty phar */
		/* make empty directory for .phar magic directory */
		FUNC3(dir);
		return FUNC8(&phar_dir_ops, data, NULL, "r");
	}

	FUNC15(manifest);

	while (FAILURE != FUNC13(manifest)) {
		if (HASH_KEY_NON_EXISTENT == FUNC12(manifest, &str_key, &unused)) {
			break;
		}

		keylen = FUNC1(str_key);
		if (keylen <= dirlen) {
			if (keylen == 0 || keylen < dirlen || !FUNC11(FUNC2(str_key), dir, dirlen)) {
				if (SUCCESS != FUNC16(manifest)) {
					break;
				}
				continue;
			}
		}

		if (*dir == '/') {
			/* root directory */
			if (keylen >= sizeof(".phar")-1 && !FUNC5(FUNC2(str_key), ".phar", sizeof(".phar")-1)) {
				/* do not add any magic entries to this directory */
				if (SUCCESS != FUNC16(manifest)) {
					break;
				}
				continue;
			}

			if (NULL != (found = (char *) FUNC4(FUNC2(str_key), '/', keylen))) {
				/* the entry has a path separator and is a subdirectory */
				entry = (char *) FUNC9(found - FUNC2(str_key), 1, 1);
				FUNC6(entry, FUNC2(str_key), found - FUNC2(str_key));
				keylen = found - FUNC2(str_key);
				entry[keylen] = '\0';
			} else {
				entry = (char *) FUNC9(keylen, 1, 1);
				FUNC6(entry, FUNC2(str_key), keylen);
				entry[keylen] = '\0';
			}

			goto PHAR_ADD_ENTRY;
		} else {
			if (0 != FUNC5(FUNC2(str_key), dir, dirlen)) {
				/* entry in directory not found */
				if (SUCCESS != FUNC16(manifest)) {
					break;
				}
				continue;
			} else {
				if (FUNC2(str_key)[dirlen] != '/') {
					if (SUCCESS != FUNC16(manifest)) {
						break;
					}
					continue;
				}
			}
		}

		save = FUNC2(str_key);
		save += dirlen + 1; /* seek to just past the path separator */

		if (NULL != (found = (char *) FUNC4(save, '/', keylen - dirlen - 1))) {
			/* is subdirectory */
			save -= dirlen + 1;
			entry = (char *) FUNC9(found - save + dirlen, 1, 1);
			FUNC6(entry, save + dirlen + 1, found - save - dirlen - 1);
			keylen = found - save - dirlen - 1;
			entry[keylen] = '\0';
		} else {
			/* is file */
			save -= dirlen + 1;
			entry = (char *) FUNC9(keylen - dirlen, 1, 1);
			FUNC6(entry, save + dirlen + 1, keylen - dirlen - 1);
			entry[keylen - dirlen - 1] = '\0';
			keylen = keylen - dirlen - 1;
		}
PHAR_ADD_ENTRY:
		if (keylen) {
			FUNC7(data, entry, keylen);
		}

		FUNC3(entry);

		if (SUCCESS != FUNC16(manifest)) {
			break;
		}
	}

	if (FAILURE != FUNC13(data)) {
		FUNC3(dir);
		FUNC17(data, phar_compare_dir_name, 0);
		return FUNC8(&phar_dir_ops, data, NULL, "r");
	} else {
		FUNC3(dir);
		return FUNC8(&phar_dir_ops, data, NULL, "r");
	}
}