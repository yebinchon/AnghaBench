
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int kind; } ;
typedef TYPE_1__ zend_ffi_val ;
struct TYPE_12__ {int align; } ;
typedef TYPE_2__ zend_ffi_dcl ;
struct TYPE_18__ {int align; } ;
struct TYPE_17__ {int align; } ;
struct TYPE_16__ {int align; } ;
struct TYPE_15__ {int align; } ;
struct TYPE_14__ {int align; } ;
struct TYPE_13__ {int align; } ;
 TYPE_8__ zend_ffi_type_char ;
 TYPE_7__ zend_ffi_type_double ;
 TYPE_6__ zend_ffi_type_float ;
 TYPE_5__ zend_ffi_type_long_double ;
 TYPE_4__ zend_ffi_type_uint32 ;
 TYPE_3__ zend_ffi_type_uint64 ;

void zend_ffi_align_as_val(zend_ffi_dcl *dcl, zend_ffi_val *align_val)
{
 switch (align_val->kind) {
  case 133:
  case 129:
   dcl->align = zend_ffi_type_uint32.align;
   break;
  case 132:
  case 128:
   dcl->align = zend_ffi_type_uint64.align;
   break;
  case 134:
   dcl->align = zend_ffi_type_float.align;
   break;
  case 135:
   dcl->align = zend_ffi_type_double.align;
   break;





  case 136:
  case 130:
   dcl->align = zend_ffi_type_char.align;
   break;
  default:
   break;
 }
}
