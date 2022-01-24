#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_op_array ;
struct TYPE_9__ {scalar_t__ opcode; scalar_t__ op2_type; int /*<<< orphan*/  op2; } ;
typedef  TYPE_2__ zend_op ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ zend_internal_arg_info ;
struct TYPE_8__ {int fn_flags; int /*<<< orphan*/  scope; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__ common; } ;
typedef  TYPE_4__ zend_function ;
typedef  int /*<<< orphan*/  zend_bool ;
typedef  int /*<<< orphan*/  uint32_t ;
struct _zend_arg_info {int /*<<< orphan*/ * name; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_FALSE ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ IS_TRUE ; 
 scalar_t__ IS_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int ZEND_ACC_USER_ARG_INFO ; 
 scalar_t__ FUNC3 (struct _zend_arg_info*) ; 
 scalar_t__ FUNC4 (struct _zend_arg_info*) ; 
 scalar_t__ ZEND_INTERNAL_FUNCTION ; 
 scalar_t__ ZEND_RECV_INIT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZEND_USER_FUNCTION ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC23(smart_str *str, zend_function *fptr, struct _zend_arg_info *arg_info, uint32_t offset, zend_bool required, char* indent)
{
	FUNC13(str, "Parameter #%d [ ", offset);
	if (!required) {
		FUNC13(str, "<optional> ");
	} else {
		FUNC13(str, "<required> ");
	}
	if (FUNC5(arg_info->type)) {
		zend_string *type_str = FUNC19(arg_info->type);
		FUNC13(str, "%s ", FUNC6(type_str));
		FUNC17(type_str);
	}
	if (FUNC4(arg_info)) {
		FUNC14(str, '&');
	}
	if (FUNC3(arg_info)) {
		FUNC16(str, "...");
	}
	if (arg_info->name) {
		FUNC13(str, "$%s",
			(fptr->type == ZEND_INTERNAL_FUNCTION &&
			 !(fptr->common.fn_flags & ZEND_ACC_USER_ARG_INFO)) ?
			((zend_internal_arg_info*)arg_info)->name :
			FUNC6(arg_info->name));
	} else {
		FUNC13(str, "$param%d", offset);
	}
	if (fptr->type == ZEND_USER_FUNCTION && !required) {
		zend_op *precv = FUNC11((zend_op_array*)fptr, offset);
		if (precv && precv->opcode == ZEND_RECV_INIT && precv->op2_type != IS_UNUSED) {
			zval zv;

			FUNC16(str, " = ");
			FUNC7(&zv, FUNC1(precv, precv->op2));
			if (FUNC2(FUNC22(&zv, fptr->common.scope) == FAILURE)) {
				FUNC21(&zv);
				return;
			}
			if (FUNC10(zv) == IS_TRUE) {
				FUNC16(str, "true");
			} else if (FUNC10(zv) == IS_FALSE) {
				FUNC16(str, "false");
			} else if (FUNC10(zv) == IS_NULL) {
				FUNC16(str, "NULL");
			} else if (FUNC10(zv) == IS_STRING) {
				FUNC14(str, '\'');
				FUNC15(str, FUNC9(zv), FUNC0(FUNC8(zv), 15));
				if (FUNC8(zv) > 15) {
					FUNC16(str, "...");
				}
				FUNC14(str, '\'');
			} else if (FUNC10(zv) == IS_ARRAY) {
				FUNC16(str, "Array");
			} else {
				zend_string *tmp_zv_str;
				zend_string *zv_str = FUNC20(&zv, &tmp_zv_str);
				FUNC12(str, zv_str);
				FUNC18(tmp_zv_str);
			}
			FUNC21(&zv);
		}
	}
	FUNC16(str, " ]");
}