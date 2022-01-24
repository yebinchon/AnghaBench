#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  int zend_ffi_type_kind ;
struct TYPE_14__ {int kind; } ;
struct TYPE_15__ {int /*<<< orphan*/  type; } ;
struct TYPE_16__ {int kind; int attr; TYPE_1__ enumeration; TYPE_2__ pointer; } ;
typedef  TYPE_3__ zend_ffi_type ;
struct TYPE_17__ {void* ptr; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ zend_ffi_cdata ;
typedef  int /*<<< orphan*/  zend_execute_data ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  ffi_type ;
struct TYPE_13__ {int kind; } ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  IS_NULL ; 
 int /*<<< orphan*/  IS_OBJECT ; 
 int /*<<< orphan*/  IS_STRING ; 
 int SUCCESS ; 
 int ZEND_FFI_ATTR_UNION ; 
 TYPE_10__* FUNC0 (int /*<<< orphan*/ ) ; 
#define  ZEND_FFI_TYPE_BOOL 143 
#define  ZEND_FFI_TYPE_CHAR 142 
#define  ZEND_FFI_TYPE_DOUBLE 141 
#define  ZEND_FFI_TYPE_ENUM 140 
#define  ZEND_FFI_TYPE_FLOAT 139 
 int const ZEND_FFI_TYPE_FUNC ; 
#define  ZEND_FFI_TYPE_LONGDOUBLE 138 
#define  ZEND_FFI_TYPE_POINTER 137 
#define  ZEND_FFI_TYPE_SINT16 136 
#define  ZEND_FFI_TYPE_SINT32 135 
#define  ZEND_FFI_TYPE_SINT64 134 
#define  ZEND_FFI_TYPE_SINT8 133 
#define  ZEND_FFI_TYPE_STRUCT 132 
#define  ZEND_FFI_TYPE_UINT16 131 
#define  ZEND_FFI_TYPE_UINT32 130 
#define  ZEND_FFI_TYPE_UINT64 129 
#define  ZEND_FFI_TYPE_UINT8 128 
 int ZEND_FFI_TYPE_VOID ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ffi_type_double ; 
 int /*<<< orphan*/  ffi_type_float ; 
 int /*<<< orphan*/  ffi_type_pointer ; 
 int /*<<< orphan*/  ffi_type_sint16 ; 
 int /*<<< orphan*/  ffi_type_sint32 ; 
 int /*<<< orphan*/  ffi_type_sint64 ; 
 int /*<<< orphan*/  ffi_type_sint8 ; 
 int /*<<< orphan*/  ffi_type_uint16 ; 
 int /*<<< orphan*/  ffi_type_uint32 ; 
 int /*<<< orphan*/  ffi_type_uint64 ; 
 int /*<<< orphan*/  ffi_type_uint8 ; 
 int /*<<< orphan*/  zend_ffi_cdata_ce ; 
 void* FUNC8 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zend_ffi_exception_ce ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_10__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 double FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC19(zval *arg, zend_ffi_type *type, ffi_type **pass_type, void **arg_values, uint32_t n, zend_execute_data *execute_data) /* {{{ */
{
	zend_long lval;
	double dval;
	zend_string *str, *tmp_str;
	zend_ffi_type_kind kind = type->kind;

	FUNC3(arg);

again:
    switch (kind) {
		case ZEND_FFI_TYPE_FLOAT:
			dval = FUNC16(arg);
			*pass_type = &ffi_type_float;
			*(float*)arg_values[n] = (float)dval;
			break;
		case ZEND_FFI_TYPE_DOUBLE:
			dval = FUNC16(arg);
			*pass_type = &ffi_type_double;
			*(double*)arg_values[n] = dval;
			break;
#ifdef HAVE_LONG_DOUBLE
		case ZEND_FFI_TYPE_LONGDOUBLE:
			dval = zval_get_double(arg);
			*pass_type = &ffi_type_double;
			*(long double*)arg_values[n] = (long double)dval;
			break;
#endif
		case ZEND_FFI_TYPE_UINT8:
			lval = FUNC17(arg);
			*pass_type = &ffi_type_uint8;
			*(uint8_t*)arg_values[n] = (uint8_t)lval;
			break;
		case ZEND_FFI_TYPE_SINT8:
			lval = FUNC17(arg);
			*pass_type = &ffi_type_sint8;
			*(int8_t*)arg_values[n] = (int8_t)lval;
			break;
		case ZEND_FFI_TYPE_UINT16:
			lval = FUNC17(arg);
			*pass_type = &ffi_type_uint16;
			*(uint16_t*)arg_values[n] = (uint16_t)lval;
			break;
		case ZEND_FFI_TYPE_SINT16:
			lval = FUNC17(arg);
			*pass_type = &ffi_type_sint16;
			*(int16_t*)arg_values[n] = (int16_t)lval;
			break;
		case ZEND_FFI_TYPE_UINT32:
			lval = FUNC17(arg);
			*pass_type = &ffi_type_uint32;
			*(uint32_t*)arg_values[n] = (uint32_t)lval;
			break;
		case ZEND_FFI_TYPE_SINT32:
			lval = FUNC17(arg);
			*pass_type = &ffi_type_sint32;
			*(int32_t*)arg_values[n] = (int32_t)lval;
			break;
		case ZEND_FFI_TYPE_UINT64:
			lval = FUNC17(arg);
			*pass_type = &ffi_type_uint64;
			*(uint64_t*)arg_values[n] = (uint64_t)lval;
			break;
		case ZEND_FFI_TYPE_SINT64:
			lval = FUNC17(arg);
			*pass_type = &ffi_type_sint64;
			*(int64_t*)arg_values[n] = (int64_t)lval;
			break;
		case ZEND_FFI_TYPE_POINTER:
			*pass_type = &ffi_type_pointer;
			if (FUNC7(arg) == IS_NULL) {
				*(void**)arg_values[n] = NULL;
				return SUCCESS;
			} else if (FUNC7(arg) == IS_STRING
			        && ((FUNC0(type->pointer.type)->kind == ZEND_FFI_TYPE_CHAR)
			         || (FUNC0(type->pointer.type)->kind == ZEND_FFI_TYPE_VOID))) {
				*(void**)arg_values[n] = FUNC6(arg);
				return SUCCESS;
			} else if (FUNC7(arg) == IS_OBJECT && FUNC4(arg) == zend_ffi_cdata_ce) {
				zend_ffi_cdata *cdata = (zend_ffi_cdata*)FUNC5(arg);

				if (FUNC9(type, FUNC0(cdata->type))) {
					if (FUNC0(cdata->type)->kind == ZEND_FFI_TYPE_POINTER) {
						if (!cdata->ptr) {
							FUNC14(zend_ffi_exception_ce, "NULL pointer dereference");
							return FAILURE;
						}
						*(void**)arg_values[n] = *(void**)cdata->ptr;
					} else {
						*(void**)arg_values[n] = cdata->ptr;
					}
					return SUCCESS;
				}
#if FFI_CLOSURES
			} else if (ZEND_FFI_TYPE(type->pointer.type)->kind == ZEND_FFI_TYPE_FUNC) {
				void *callback = zend_ffi_create_callback(ZEND_FFI_TYPE(type->pointer.type), arg);

				if (callback) {
					*(void**)arg_values[n] = callback;
					break;
				} else {
					return FAILURE;
				}
#endif
			}
			FUNC11(arg, type, n, execute_data);
			return FAILURE;
		case ZEND_FFI_TYPE_BOOL:
			*pass_type = &ffi_type_uint8;
			*(uint8_t*)arg_values[n] = FUNC13(arg);
			break;
		case ZEND_FFI_TYPE_CHAR:
			str = FUNC18(arg, &tmp_str);
			*pass_type = &ffi_type_sint8;
			*(char*)arg_values[n] = FUNC2(str)[0];
			if (FUNC1(str) != 1) {
				FUNC11(arg, type, n, execute_data);
			}
			FUNC15(tmp_str);
			break;
		case ZEND_FFI_TYPE_ENUM:
			kind = type->enumeration.kind;
			goto again;
		case ZEND_FFI_TYPE_STRUCT:
			if (!(type->attr & ZEND_FFI_ATTR_UNION)
			 && FUNC7(arg) == IS_OBJECT && FUNC4(arg) == zend_ffi_cdata_ce) {
				zend_ffi_cdata *cdata = (zend_ffi_cdata*)FUNC5(arg);

				if (FUNC9(type, FUNC0(cdata->type))) {
				    /* Create a fake structure type */
					ffi_type *t = FUNC10(type);
					if (t) {
						*pass_type = t;
						arg_values[n] = cdata->ptr;
						break;
					}
				}
			}
			FUNC11(arg, type, n, execute_data);
			return FAILURE;
		default:
			FUNC12(type);
			return FAILURE;
	}
	return SUCCESS;
}