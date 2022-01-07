
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
typedef int zend_ffi_type ;
struct TYPE_2__ {int type; } ;
typedef TYPE_1__ zend_ffi_cdata ;
typedef int zend_execute_data ;
typedef int uint8_t ;
typedef size_t uint32_t ;
typedef void* int64_t ;
typedef void* int32_t ;
typedef int ffi_type ;


 int FAILURE ;







 int SUCCESS ;
 int * ZEND_FFI_TYPE (int ) ;
 int ZVAL_DEREF (int *) ;
 double Z_DVAL_P (int *) ;
 void* Z_LVAL_P (int *) ;
 int Z_OBJCE_P (int *) ;
 scalar_t__ Z_OBJ_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 int ffi_type_double ;
 int ffi_type_pointer ;
 int ffi_type_sint32 ;
 int ffi_type_sint64 ;
 int ffi_type_uint8 ;
 int zend_ffi_cdata_ce ;
 int zend_ffi_exception_ce ;
 int zend_ffi_pass_arg (int *,int *,int **,void**,size_t,int *) ;
 int zend_throw_error (int ,char*) ;

__attribute__((used)) static int zend_ffi_pass_var_arg(zval *arg, ffi_type **pass_type, void **arg_values, uint32_t n, zend_execute_data *execute_data)
{
 ZVAL_DEREF(arg);
 switch (Z_TYPE_P(arg)) {
  case 131:
   *pass_type = &ffi_type_pointer;
   *(void**)arg_values[n] = ((void*)0);
   break;
  case 133:
   *pass_type = &ffi_type_uint8;
   *(uint8_t*)arg_values[n] = 0;
   break;
  case 128:
   *pass_type = &ffi_type_uint8;
   *(uint8_t*)arg_values[n] = 1;
   break;
  case 132:
   if (sizeof(zend_long) == 4) {
    *pass_type = &ffi_type_sint32;
    *(int32_t*)arg_values[n] = Z_LVAL_P(arg);
   } else {
    *pass_type = &ffi_type_sint64;
    *(int64_t*)arg_values[n] = Z_LVAL_P(arg);
   }
   break;
  case 134:
   *pass_type = &ffi_type_double;
   *(double*)arg_values[n] = Z_DVAL_P(arg);
   break;
  case 129:
   *pass_type = &ffi_type_pointer;
   *(char**)arg_values[n] = Z_STRVAL_P(arg);
   break;
  case 130:
   if (Z_OBJCE_P(arg) == zend_ffi_cdata_ce) {
    zend_ffi_cdata *cdata = (zend_ffi_cdata*)Z_OBJ_P(arg);
    zend_ffi_type *type = ZEND_FFI_TYPE(cdata->type);

    return zend_ffi_pass_arg(arg, type, pass_type, arg_values, n, execute_data);
   }

  default:
   zend_throw_error(zend_ffi_exception_ce, "Unsupported argument type");
   return FAILURE;
 }
 return SUCCESS;
}
