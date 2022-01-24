#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_execute_data ;
struct TYPE_11__ {int /*<<< orphan*/  current_zval; int /*<<< orphan*/  current_line_len; scalar_t__ current_line; int /*<<< orphan*/  current_line_num; TYPE_5__* func_getCurr; int /*<<< orphan*/  escape; int /*<<< orphan*/  enclosure; int /*<<< orphan*/  delimiter; int /*<<< orphan*/  stream; } ;
struct TYPE_12__ {TYPE_2__ file; } ;
struct TYPE_13__ {TYPE_3__ u; int /*<<< orphan*/  flags; int /*<<< orphan*/  file_name; } ;
typedef  TYPE_4__ spl_filesystem_object ;
struct TYPE_10__ {scalar_t__ scope; } ;
struct TYPE_14__ {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  SPL_FILE_OBJECT_READ_CSV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  ZEND_THIS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_execute_data ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 scalar_t__ spl_ce_SplFileObject ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_4__*,int) ; 
 int FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(zval * this_ptr, spl_filesystem_object *intern, int silent) /* {{{ */
{
	zval retval;

	/* 1) use fgetcsv? 2) overloaded call the function, 3) do it directly */
	if (FUNC1(intern->flags, SPL_FILE_OBJECT_READ_CSV) || intern->u.file.func_getCurr->common.scope != spl_ce_SplFileObject) {
		if (FUNC10(intern->u.file.stream)) {
			if (!silent) {
				FUNC15(spl_ce_RuntimeException, 0, "Cannot read from file %s", intern->file_name);
			}
			return FAILURE;
		}
		if (FUNC1(intern->flags, SPL_FILE_OBJECT_READ_CSV)) {
			return FUNC13(intern, intern->u.file.delimiter, intern->u.file.enclosure, intern->u.file.escape, NULL);
		} else {
			zend_execute_data *execute_data = FUNC0(current_execute_data);
			FUNC14(FUNC5(this_ptr), FUNC4(ZEND_THIS), &intern->u.file.func_getCurr, "getCurrentLine", &retval);
		}
		if (!FUNC3(retval)) {
			if (intern->u.file.current_line || !FUNC3(intern->u.file.current_zval)) {
				intern->u.file.current_line_num++;
			}
			FUNC11(intern);
			if (FUNC8(retval) == IS_STRING) {
				intern->u.file.current_line = FUNC9(FUNC7(retval), FUNC6(retval));
				intern->u.file.current_line_len = FUNC6(retval);
			} else {
				zval *value = &retval;

				FUNC2(&intern->u.file.current_zval, value);
			}
			FUNC16(&retval);
			return SUCCESS;
		} else {
			return FAILURE;
		}
	} else {
		return FUNC12(intern, silent);
	}
}