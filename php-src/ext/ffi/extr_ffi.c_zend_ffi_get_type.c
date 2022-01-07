
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_ffi_type_kind ;
struct TYPE_5__ {int kind; } ;
struct TYPE_6__ {int kind; int attr; TYPE_1__ enumeration; } ;
typedef TYPE_2__ zend_ffi_type ;
typedef int ffi_type ;


 int ZEND_FFI_ATTR_UNION ;
 int ffi_type_double ;
 int ffi_type_float ;
 int ffi_type_longdouble ;
 int ffi_type_pointer ;
 int ffi_type_sint16 ;
 int ffi_type_sint32 ;
 int ffi_type_sint64 ;
 int ffi_type_sint8 ;
 int ffi_type_uint16 ;
 int ffi_type_uint32 ;
 int ffi_type_uint64 ;
 int ffi_type_uint8 ;
 int ffi_type_void ;
 int * zend_ffi_make_fake_struct_type (TYPE_2__*) ;

__attribute__((used)) static ffi_type *zend_ffi_get_type(zend_ffi_type *type)
{
 zend_ffi_type_kind kind = type->kind;

again:
    switch (kind) {
  case 140:
   return &ffi_type_float;
  case 142:
   return &ffi_type_double;

  case 139:
   return &ffi_type_longdouble;

  case 129:
   return &ffi_type_uint8;
  case 134:
   return &ffi_type_sint8;
  case 132:
   return &ffi_type_uint16;
  case 137:
   return &ffi_type_sint16;
  case 131:
   return &ffi_type_uint32;
  case 136:
   return &ffi_type_sint32;
  case 130:
   return &ffi_type_uint64;
  case 135:
   return &ffi_type_sint64;
  case 138:
   return &ffi_type_pointer;
  case 128:
   return &ffi_type_void;
  case 144:
   return &ffi_type_uint8;
  case 143:
   return &ffi_type_sint8;
  case 141:
   kind = type->enumeration.kind;
   goto again;
  case 133:
   if (!(type->attr & ZEND_FFI_ATTR_UNION)) {
    ffi_type *t = zend_ffi_make_fake_struct_type(type);
    return t;
   }
   break;
  default:
   break;
 }
 return ((void*)0);
}
