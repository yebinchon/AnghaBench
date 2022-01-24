#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_10__ {char* open_mode; int open_mode_len; char delimiter; char enclosure; } ;
struct TYPE_9__ {char* sub_path; int sub_path_len; int /*<<< orphan*/  dirp; } ;
struct TYPE_11__ {TYPE_2__ file; TYPE_1__ dir; } ;
struct TYPE_13__ {int /*<<< orphan*/  properties; } ;
struct TYPE_12__ {char* file_name; size_t file_name_len; scalar_t__ type; char* _path; int _path_len; TYPE_3__ u; TYPE_8__ std; } ;
typedef  TYPE_4__ spl_filesystem_object ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ SPL_FS_DIR ; 
 scalar_t__ SPL_FS_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  php_glob_stream_ops ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  spl_ce_DirectoryIterator ; 
 int /*<<< orphan*/  spl_ce_RecursiveDirectoryIterator ; 
 int /*<<< orphan*/  spl_ce_SplFileInfo ; 
 int /*<<< orphan*/  spl_ce_SplFileObject ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,size_t*) ; 
 char* FUNC7 (TYPE_4__*,size_t*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HashTable *FUNC12(zend_object *object, int *is_temp) /* {{{ */
{
	spl_filesystem_object *intern = FUNC5(object);
	zval tmp;
	HashTable *rv;
	zend_string *pnstr;
	char *path;
	size_t  path_len;
	char stmp[2];

	*is_temp = 1;

	if (!intern->std.properties) {
		FUNC4(&intern->std);
	}

	rv = FUNC9(intern->std.properties);

	pnstr = FUNC8(spl_ce_SplFileInfo, "pathName", sizeof("pathName")-1);
	path = FUNC7(intern, &path_len);
	FUNC2(&tmp, path ? path : "", path_len);
	FUNC11(rv, pnstr, &tmp);
	FUNC10(pnstr, 0);

	if (intern->file_name) {
		pnstr = FUNC8(spl_ce_SplFileInfo, "fileName", sizeof("fileName")-1);
		FUNC6(intern, &path_len);

		if (path_len && path_len < intern->file_name_len) {
			FUNC2(&tmp, intern->file_name + path_len + 1, intern->file_name_len - (path_len + 1));
		} else {
			FUNC2(&tmp, intern->file_name, intern->file_name_len);
		}
		FUNC11(rv, pnstr, &tmp);
		FUNC10(pnstr, 0);
	}
	if (intern->type == SPL_FS_DIR) {
#ifdef HAVE_GLOB
		pnstr = spl_gen_private_prop_name(spl_ce_DirectoryIterator, "glob", sizeof("glob")-1);
		if (php_stream_is(intern->u.dir.dirp ,&php_glob_stream_ops)) {
			ZVAL_STRINGL(&tmp, intern->_path, intern->_path_len);
		} else {
			ZVAL_FALSE(&tmp);
		}
		zend_symtable_update(rv, pnstr, &tmp);
		zend_string_release_ex(pnstr, 0);
#endif
		pnstr = FUNC8(spl_ce_RecursiveDirectoryIterator, "subPathName", sizeof("subPathName")-1);
		if (intern->u.dir.sub_path) {
			FUNC2(&tmp, intern->u.dir.sub_path, intern->u.dir.sub_path_len);
		} else {
			FUNC0(&tmp);
		}
		FUNC11(rv, pnstr, &tmp);
		FUNC10(pnstr, 0);
	}
	if (intern->type == SPL_FS_FILE) {
		pnstr = FUNC8(spl_ce_SplFileObject, "openMode", sizeof("openMode")-1);
		FUNC2(&tmp, intern->u.file.open_mode, intern->u.file.open_mode_len);
		FUNC11(rv, pnstr, &tmp);
		FUNC10(pnstr, 0);
		stmp[1] = '\0';
		stmp[0] = intern->u.file.delimiter;
		pnstr = FUNC8(spl_ce_SplFileObject, "delimiter", sizeof("delimiter")-1);
		FUNC2(&tmp, stmp, 1);
		FUNC11(rv, pnstr, &tmp);
		FUNC10(pnstr, 0);
		stmp[0] = intern->u.file.enclosure;
		pnstr = FUNC8(spl_ce_SplFileObject, "enclosure", sizeof("enclosure")-1);
		FUNC2(&tmp, stmp, 1);
		FUNC11(rv, pnstr, &tmp);
		FUNC10(pnstr, 0);
	}

	return rv;
}