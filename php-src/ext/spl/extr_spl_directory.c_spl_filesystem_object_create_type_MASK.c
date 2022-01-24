#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_error_handling ;
struct TYPE_27__ {TYPE_10__* constructor; } ;
typedef  TYPE_6__ zend_class_entry ;
typedef  int /*<<< orphan*/  zend_bool ;
struct TYPE_25__ {char* open_mode; int open_mode_len; int /*<<< orphan*/  zcontext; } ;
struct TYPE_22__ {int /*<<< orphan*/ * d_name; } ;
struct TYPE_23__ {TYPE_1__ entry; } ;
struct TYPE_26__ {TYPE_4__ file; TYPE_2__ dir; } ;
struct TYPE_28__ {int type; char* file_name; int file_name_len; char* _path; int _path_len; TYPE_5__ u; int /*<<< orphan*/  std; TYPE_6__* file_class; TYPE_6__* info_class; } ;
typedef  TYPE_7__ spl_filesystem_object ;
struct TYPE_24__ {int /*<<< orphan*/  scope; } ;
struct TYPE_21__ {TYPE_3__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  EH_THROW ; 
 int /*<<< orphan*/  FAILURE ; 
#define  SPL_FS_DIR 130 
#define  SPL_FS_FILE 129 
#define  SPL_FS_INFO 128 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (char*,int) ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 int /*<<< orphan*/  spl_ce_SplFileInfo ; 
 int /*<<< orphan*/  spl_ce_SplFileObject ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 void* FUNC9 (TYPE_7__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_6__*,TYPE_10__**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_6__*,TYPE_10__**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,char**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static spl_filesystem_object *FUNC19(int ht, spl_filesystem_object *source, int type, zend_class_entry *ce, zval *return_value) /* {{{ */
{
	spl_filesystem_object *intern;
	zend_bool use_include_path = 0;
	zval arg1, arg2;
	zend_error_handling error_handling;

	FUNC14(EH_THROW, spl_ce_RuntimeException, &error_handling);

	switch (source->type) {
		case SPL_FS_INFO:
		case SPL_FS_FILE:
			break;
		case SPL_FS_DIR:
			if (!source->u.dir.entry.d_name[0]) {
				FUNC16(spl_ce_RuntimeException, 0, "Could not open file");
				FUNC15(&error_handling);
				return NULL;
			}
	}

	switch (type) {
		case SPL_FS_INFO:
			ce = ce ? ce : source->info_class;

			if (FUNC0(FUNC17(ce) != SUCCESS)) {
				break;
			}

			intern = FUNC7(FUNC10(ce));
			FUNC2(return_value, &intern->std);

			FUNC8(source);
			if (ce->constructor->common.scope != spl_ce_SplFileInfo) {
				FUNC3(&arg1, source->file_name, source->file_name_len);
				FUNC11(FUNC4(return_value), ce, &ce->constructor, "__construct", NULL, &arg1);
				FUNC18(&arg1);
			} else {
				intern->file_name = FUNC5(source->file_name, source->file_name_len);
				intern->file_name_len = source->file_name_len;
				intern->_path = FUNC9(source, &intern->_path_len);
				intern->_path = FUNC5(intern->_path, intern->_path_len);
			}
			break;
		case SPL_FS_FILE:
			ce = ce ? ce : source->file_class;

			if (FUNC0(FUNC17(ce) != SUCCESS)) {
				break;
			}

			intern = FUNC7(FUNC10(ce));

			FUNC2(return_value, &intern->std);

			FUNC8(source);

			if (ce->constructor->common.scope != spl_ce_SplFileObject) {
				FUNC3(&arg1, source->file_name, source->file_name_len);
				FUNC3(&arg2, "r", 1);
				FUNC12(FUNC4(return_value), ce, &ce->constructor, "__construct", NULL, &arg1, &arg2);
				FUNC18(&arg1);
				FUNC18(&arg2);
			} else {
				intern->file_name = source->file_name;
				intern->file_name_len = source->file_name_len;
				intern->_path = FUNC9(source, &intern->_path_len);
				intern->_path = FUNC5(intern->_path, intern->_path_len);

				intern->u.file.open_mode = "r";
				intern->u.file.open_mode_len = 1;

				if (ht && FUNC13(ht, "|sbr",
							&intern->u.file.open_mode, &intern->u.file.open_mode_len,
							&use_include_path, &intern->u.file.zcontext) == FAILURE) {
					FUNC15(&error_handling);
					intern->u.file.open_mode = NULL;
					intern->file_name = NULL;
					FUNC18(return_value);
					FUNC1(return_value);
					return NULL;
				}

				if (FUNC6(intern, use_include_path, 0) == FAILURE) {
					FUNC15(&error_handling);
					FUNC18(return_value);
					FUNC1(return_value);
					return NULL;
				}
			}
			break;
		case SPL_FS_DIR:
			FUNC15(&error_handling);
			FUNC16(spl_ce_RuntimeException, 0, "Operation not supported");
			return NULL;
	}
	FUNC15(&error_handling);
	return NULL;
}