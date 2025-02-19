
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ length; int type; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_9__ {scalar_t__ kind; TYPE_2__ array; TYPE_1__ pointer; } ;
typedef TYPE_3__ zend_ffi_type ;


 TYPE_3__* ZEND_FFI_TYPE (int ) ;
 scalar_t__ ZEND_FFI_TYPE_ARRAY ;
 scalar_t__ ZEND_FFI_TYPE_POINTER ;
 scalar_t__ ZEND_FFI_TYPE_VOID ;

__attribute__((used)) static int zend_ffi_is_same_type(zend_ffi_type *type1, zend_ffi_type *type2)
{
 while (1) {
  if (type1 == type2) {
   return 1;
  } else if (type1->kind == type2->kind) {
   if (type1->kind < ZEND_FFI_TYPE_POINTER) {
    return 1;
   } else if (type1->kind == ZEND_FFI_TYPE_POINTER) {
    type1 = ZEND_FFI_TYPE(type1->pointer.type);
    type2 = ZEND_FFI_TYPE(type2->pointer.type);
    if (type1->kind == ZEND_FFI_TYPE_VOID ||
        type2->kind == ZEND_FFI_TYPE_VOID) {
        return 1;
    }
   } else if (type1->kind == ZEND_FFI_TYPE_ARRAY &&
              type1->array.length == type2->array.length) {
    type1 = ZEND_FFI_TYPE(type1->array.type);
    type2 = ZEND_FFI_TYPE(type2->array.type);
   } else {
    break;
   }
  } else {
   break;
  }
 }
 return 0;
}
