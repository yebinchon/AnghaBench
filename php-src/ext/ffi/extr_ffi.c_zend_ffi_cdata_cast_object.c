
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
typedef int zend_ffi_type_kind ;
struct TYPE_7__ {int type; } ;
struct TYPE_6__ {int kind; } ;
struct TYPE_8__ {int kind; int attr; TYPE_2__ pointer; TYPE_1__ enumeration; } ;
typedef TYPE_3__ zend_ffi_type ;
struct TYPE_9__ {void* ptr; int type; } ;
typedef TYPE_4__ zend_ffi_cdata ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;


 int FAILURE ;
 int IS_STRING ;
 int SUCCESS ;
 int ZEND_FFI_ATTR_CONST ;
 TYPE_3__* ZEND_FFI_TYPE (int ) ;
 int ZSTR_CHAR (unsigned char) ;
 int ZVAL_BOOL (int *,int ) ;
 int ZVAL_DOUBLE (int *,long double) ;
 int ZVAL_INTERNED_STR (int *,int ) ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRING (int *,char*) ;
 int convert_to_string (int *) ;

__attribute__((used)) static int zend_ffi_cdata_cast_object(zend_object *readobj, zval *writeobj, int type)
{
 if (type == IS_STRING) {
  zend_ffi_cdata *cdata = (zend_ffi_cdata*)readobj;
  zend_ffi_type *ctype = ZEND_FFI_TYPE(cdata->type);
  void *ptr = cdata->ptr;
  zend_ffi_type_kind kind = ctype->kind;

again:
     switch (kind) {
   case 138:
    ZVAL_DOUBLE(writeobj, *(float*)ptr);
    break;
   case 140:
    ZVAL_DOUBLE(writeobj, *(double*)ptr);
    break;





   case 128:
    ZVAL_LONG(writeobj, *(uint8_t*)ptr);
    break;
   case 132:
    ZVAL_LONG(writeobj, *(int8_t*)ptr);
    break;
   case 131:
    ZVAL_LONG(writeobj, *(uint16_t*)ptr);
    break;
   case 135:
    ZVAL_LONG(writeobj, *(int16_t*)ptr);
    break;
   case 130:
    ZVAL_LONG(writeobj, *(uint32_t*)ptr);
    break;
   case 134:
    ZVAL_LONG(writeobj, *(int32_t*)ptr);
    break;
   case 129:
    ZVAL_LONG(writeobj, *(uint64_t*)ptr);
    break;
   case 133:
    ZVAL_LONG(writeobj, *(int64_t*)ptr);
    break;
   case 142:
    ZVAL_BOOL(writeobj, *(uint8_t*)ptr);
    break;
   case 141:
    ZVAL_INTERNED_STR(writeobj, ZSTR_CHAR(*(unsigned char*)ptr));
    return SUCCESS;
   case 139:
    kind = ctype->enumeration.kind;
    goto again;
   case 136:
    if (*(void**)ptr == ((void*)0)) {
     ZVAL_NULL(writeobj);
     break;
    } else if ((ctype->attr & ZEND_FFI_ATTR_CONST) && ZEND_FFI_TYPE(ctype->pointer.type)->kind == 141) {
     ZVAL_STRING(writeobj, *(char**)ptr);
     return SUCCESS;
    }
    return FAILURE;
   default:
    return FAILURE;
  }
  convert_to_string(writeobj);
  return SUCCESS;
 }

 return FAILURE;
}
