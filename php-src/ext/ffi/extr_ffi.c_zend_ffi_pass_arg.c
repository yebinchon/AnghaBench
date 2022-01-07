
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_long ;
typedef int zend_ffi_type_kind ;
struct TYPE_14__ {int kind; } ;
struct TYPE_15__ {int type; } ;
struct TYPE_16__ {int kind; int attr; TYPE_1__ enumeration; TYPE_2__ pointer; } ;
typedef TYPE_3__ zend_ffi_type ;
struct TYPE_17__ {void* ptr; int type; } ;
typedef TYPE_4__ zend_ffi_cdata ;
typedef int zend_execute_data ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int ffi_type ;
struct TYPE_13__ {int kind; } ;


 int FAILURE ;
 int IS_NULL ;
 int IS_OBJECT ;
 int IS_STRING ;
 int SUCCESS ;
 int ZEND_FFI_ATTR_UNION ;
 TYPE_10__* ZEND_FFI_TYPE (int ) ;





 int const ZEND_FFI_TYPE_FUNC ;
 int ZEND_FFI_TYPE_VOID ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int ZVAL_DEREF (int *) ;
 int Z_OBJCE_P (int *) ;
 scalar_t__ Z_OBJ_P (int *) ;
 void* Z_STRVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 int ffi_type_double ;
 int ffi_type_float ;
 int ffi_type_pointer ;
 int ffi_type_sint16 ;
 int ffi_type_sint32 ;
 int ffi_type_sint64 ;
 int ffi_type_sint8 ;
 int ffi_type_uint16 ;
 int ffi_type_uint32 ;
 int ffi_type_uint64 ;
 int ffi_type_uint8 ;
 int zend_ffi_cdata_ce ;
 void* zend_ffi_create_callback (TYPE_10__*,int *) ;
 int zend_ffi_exception_ce ;
 int zend_ffi_is_compatible_type (TYPE_3__*,TYPE_10__*) ;
 int * zend_ffi_make_fake_struct_type (TYPE_3__*) ;
 int zend_ffi_pass_incompatible (int *,TYPE_3__*,size_t,int *) ;
 int zend_ffi_pass_unsupported (TYPE_3__*) ;
 int zend_is_true (int *) ;
 int zend_throw_error (int ,char*) ;
 int zend_tmp_string_release (int *) ;
 double zval_get_double (int *) ;
 int zval_get_long (int *) ;
 int * zval_get_tmp_string (int *,int **) ;

__attribute__((used)) static int zend_ffi_pass_arg(zval *arg, zend_ffi_type *type, ffi_type **pass_type, void **arg_values, uint32_t n, zend_execute_data *execute_data)
{
 zend_long lval;
 double dval;
 zend_string *str, *tmp_str;
 zend_ffi_type_kind kind = type->kind;

 ZVAL_DEREF(arg);

again:
    switch (kind) {
  case 139:
   dval = zval_get_double(arg);
   *pass_type = &ffi_type_float;
   *(float*)arg_values[n] = (float)dval;
   break;
  case 141:
   dval = zval_get_double(arg);
   *pass_type = &ffi_type_double;
   *(double*)arg_values[n] = dval;
   break;







  case 128:
   lval = zval_get_long(arg);
   *pass_type = &ffi_type_uint8;
   *(uint8_t*)arg_values[n] = (uint8_t)lval;
   break;
  case 133:
   lval = zval_get_long(arg);
   *pass_type = &ffi_type_sint8;
   *(int8_t*)arg_values[n] = (int8_t)lval;
   break;
  case 131:
   lval = zval_get_long(arg);
   *pass_type = &ffi_type_uint16;
   *(uint16_t*)arg_values[n] = (uint16_t)lval;
   break;
  case 136:
   lval = zval_get_long(arg);
   *pass_type = &ffi_type_sint16;
   *(int16_t*)arg_values[n] = (int16_t)lval;
   break;
  case 130:
   lval = zval_get_long(arg);
   *pass_type = &ffi_type_uint32;
   *(uint32_t*)arg_values[n] = (uint32_t)lval;
   break;
  case 135:
   lval = zval_get_long(arg);
   *pass_type = &ffi_type_sint32;
   *(int32_t*)arg_values[n] = (int32_t)lval;
   break;
  case 129:
   lval = zval_get_long(arg);
   *pass_type = &ffi_type_uint64;
   *(uint64_t*)arg_values[n] = (uint64_t)lval;
   break;
  case 134:
   lval = zval_get_long(arg);
   *pass_type = &ffi_type_sint64;
   *(int64_t*)arg_values[n] = (int64_t)lval;
   break;
  case 137:
   *pass_type = &ffi_type_pointer;
   if (Z_TYPE_P(arg) == IS_NULL) {
    *(void**)arg_values[n] = ((void*)0);
    return SUCCESS;
   } else if (Z_TYPE_P(arg) == IS_STRING
           && ((ZEND_FFI_TYPE(type->pointer.type)->kind == 142)
            || (ZEND_FFI_TYPE(type->pointer.type)->kind == ZEND_FFI_TYPE_VOID))) {
    *(void**)arg_values[n] = Z_STRVAL_P(arg);
    return SUCCESS;
   } else if (Z_TYPE_P(arg) == IS_OBJECT && Z_OBJCE_P(arg) == zend_ffi_cdata_ce) {
    zend_ffi_cdata *cdata = (zend_ffi_cdata*)Z_OBJ_P(arg);

    if (zend_ffi_is_compatible_type(type, ZEND_FFI_TYPE(cdata->type))) {
     if (ZEND_FFI_TYPE(cdata->type)->kind == 137) {
      if (!cdata->ptr) {
       zend_throw_error(zend_ffi_exception_ce, "NULL pointer dereference");
       return FAILURE;
      }
      *(void**)arg_values[n] = *(void**)cdata->ptr;
     } else {
      *(void**)arg_values[n] = cdata->ptr;
     }
     return SUCCESS;
    }
   }
   zend_ffi_pass_incompatible(arg, type, n, execute_data);
   return FAILURE;
  case 143:
   *pass_type = &ffi_type_uint8;
   *(uint8_t*)arg_values[n] = zend_is_true(arg);
   break;
  case 142:
   str = zval_get_tmp_string(arg, &tmp_str);
   *pass_type = &ffi_type_sint8;
   *(char*)arg_values[n] = ZSTR_VAL(str)[0];
   if (ZSTR_LEN(str) != 1) {
    zend_ffi_pass_incompatible(arg, type, n, execute_data);
   }
   zend_tmp_string_release(tmp_str);
   break;
  case 140:
   kind = type->enumeration.kind;
   goto again;
  case 132:
   if (!(type->attr & ZEND_FFI_ATTR_UNION)
    && Z_TYPE_P(arg) == IS_OBJECT && Z_OBJCE_P(arg) == zend_ffi_cdata_ce) {
    zend_ffi_cdata *cdata = (zend_ffi_cdata*)Z_OBJ_P(arg);

    if (zend_ffi_is_compatible_type(type, ZEND_FFI_TYPE(cdata->type))) {

     ffi_type *t = zend_ffi_make_fake_struct_type(type);
     if (t) {
      *pass_type = t;
      arg_values[n] = cdata->ptr;
      break;
     }
    }
   }
   zend_ffi_pass_incompatible(arg, type, n, execute_data);
   return FAILURE;
  default:
   zend_ffi_pass_unsupported(type);
   return FAILURE;
 }
 return SUCCESS;
}
