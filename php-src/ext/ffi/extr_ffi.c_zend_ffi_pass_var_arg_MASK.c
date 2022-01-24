#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  int /*<<< orphan*/  zend_ffi_type ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ zend_ffi_cdata ;
typedef  int /*<<< orphan*/  zend_execute_data ;
typedef  int uint8_t ;
typedef  size_t uint32_t ;
typedef  void* int64_t ;
typedef  void* int32_t ;
typedef  int /*<<< orphan*/  ffi_type ;

/* Variables and functions */
 int FAILURE ; 
#define  IS_DOUBLE 134 
#define  IS_FALSE 133 
#define  IS_LONG 132 
#define  IS_NULL 131 
#define  IS_OBJECT 130 
#define  IS_STRING 129 
#define  IS_TRUE 128 
 int SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ffi_type_double ; 
 int /*<<< orphan*/  ffi_type_pointer ; 
 int /*<<< orphan*/  ffi_type_sint32 ; 
 int /*<<< orphan*/  ffi_type_sint64 ; 
 int /*<<< orphan*/  ffi_type_uint8 ; 
 int /*<<< orphan*/  zend_ffi_cdata_ce ; 
 int /*<<< orphan*/  zend_ffi_exception_ce ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,void**,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC10(zval *arg, ffi_type **pass_type, void **arg_values, uint32_t n, zend_execute_data *execute_data) /* {{{ */
{
	FUNC1(arg);
	switch (FUNC7(arg)) {
		case IS_NULL:
			*pass_type = &ffi_type_pointer;
			*(void**)arg_values[n] = NULL;
			break;
		case IS_FALSE:
			*pass_type = &ffi_type_uint8;
			*(uint8_t*)arg_values[n] = 0;
			break;
		case IS_TRUE:
			*pass_type = &ffi_type_uint8;
			*(uint8_t*)arg_values[n] = 1;
			break;
		case IS_LONG:
			if (sizeof(zend_long) == 4) {
				*pass_type = &ffi_type_sint32;
				*(int32_t*)arg_values[n] = FUNC3(arg);
			} else {
				*pass_type = &ffi_type_sint64;
				*(int64_t*)arg_values[n] = FUNC3(arg);
			}
			break;
		case IS_DOUBLE:
			*pass_type = &ffi_type_double;
			*(double*)arg_values[n] = FUNC2(arg);
			break;
		case IS_STRING:
			*pass_type = &ffi_type_pointer;
			*(char**)arg_values[n] = FUNC6(arg);
			break;
		case IS_OBJECT:
			if (FUNC4(arg) == zend_ffi_cdata_ce) {
				zend_ffi_cdata *cdata = (zend_ffi_cdata*)FUNC5(arg);
				zend_ffi_type *type = FUNC0(cdata->type);

				return FUNC8(arg, type, pass_type, arg_values, n, execute_data);
			}
			/* break missing intentionally */
		default:
			FUNC9(zend_ffi_exception_ce, "Unsupported argument type");
			return FAILURE;
	}
	return SUCCESS;
}