#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_uchar ;
typedef  int zend_long ;
struct TYPE_11__ {int /*<<< orphan*/  type; } ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
struct TYPE_12__ {scalar_t__ kind; scalar_t__ size; TYPE_2__ array; TYPE_1__ pointer; } ;
typedef  TYPE_3__ zend_ffi_type ;
struct TYPE_13__ {char* ptr; int /*<<< orphan*/  type; int /*<<< orphan*/  std; } ;
typedef  TYPE_4__ zend_ffi_cdata ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ IS_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SUCCESS ; 
 scalar_t__ ZEND_ADD ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZEND_FFI_TYPE_ARRAY ; 
 scalar_t__ ZEND_FFI_TYPE_POINTER ; 
 scalar_t__ ZEND_SUB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_3__*,int) ; 
 scalar_t__ zend_ffi_cdata_ce ; 
 scalar_t__ FUNC9 (TYPE_3__*,TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(zend_uchar opcode, zval *result, zval *op1, zval *op2) /* {{{ */
{
	zend_long offset;

	FUNC2(op1);
	FUNC2(op2);
	if (FUNC7(op1) == IS_OBJECT && FUNC5(op1) == zend_ffi_cdata_ce) {
		zend_ffi_cdata *cdata1 = (zend_ffi_cdata*)FUNC6(op1);
		zend_ffi_type *type1 = FUNC1(cdata1->type);

		if (type1->kind == ZEND_FFI_TYPE_POINTER || type1->kind == ZEND_FFI_TYPE_ARRAY) {
			if (opcode == ZEND_ADD) {
				offset = FUNC10(op2);
				FUNC4(result, FUNC8(cdata1, type1, offset));
				if (result == op1) {
					FUNC0(&cdata1->std);
				}
				return SUCCESS;
			} else if (opcode == ZEND_SUB) {
				if (FUNC7(op2) == IS_OBJECT && FUNC5(op2) == zend_ffi_cdata_ce) {
					zend_ffi_cdata *cdata2 = (zend_ffi_cdata*)FUNC6(op2);
					zend_ffi_type *type2 = FUNC1(cdata2->type);

					if (type2->kind == ZEND_FFI_TYPE_POINTER || type2->kind == ZEND_FFI_TYPE_ARRAY) {
						zend_ffi_type *t1, *t2;
						char *p1, *p2;

						if (type1->kind == ZEND_FFI_TYPE_POINTER) {
							t1 = FUNC1(type1->pointer.type);
							p1 = (char*)(*(void**)cdata1->ptr);
						} else {
							t1 = FUNC1(type1->array.type);
							p1 = cdata1->ptr;
						}
						if (type2->kind == ZEND_FFI_TYPE_POINTER) {
							t2 = FUNC1(type2->pointer.type);
							p2 = (char*)(*(void**)cdata2->ptr);
						} else {
							t2 = FUNC1(type2->array.type);
							p2 = cdata2->ptr;
						}
						if (FUNC9(t1, t2)) {
							FUNC3(result,
								(zend_long)(p1 - p2) / (zend_long)t1->size);
							return SUCCESS;
						}
					}
				}
				offset = FUNC10(op2);
				FUNC4(result, FUNC8(cdata1, type1, -offset));
				if (result == op1) {
					FUNC0(&cdata1->std);
				}
				return SUCCESS;
			}
		}
	} else if (FUNC7(op2) == IS_OBJECT && FUNC5(op2) == zend_ffi_cdata_ce) {
		zend_ffi_cdata *cdata2 = (zend_ffi_cdata*)FUNC6(op2);
		zend_ffi_type *type2 = FUNC1(cdata2->type);

		if (type2->kind == ZEND_FFI_TYPE_POINTER || type2->kind == ZEND_FFI_TYPE_ARRAY) {
			if (opcode == ZEND_ADD) {
				offset = FUNC10(op1);
				FUNC4(result, FUNC8(cdata2, type2, offset));
				return SUCCESS;
			}
		}
	}

	return FAILURE;
}