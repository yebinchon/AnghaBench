
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; int type; } ;
typedef TYPE_1__ zend_ffi_tag ;


 int ZEND_FFI_TYPE (int ) ;
 int zend_ffi_same_types (int ,int ) ;

__attribute__((used)) static int zend_ffi_same_tags(zend_ffi_tag *old, zend_ffi_tag *tag)
{
 if (old->kind != tag->kind) {
  return 0;
 }

 return zend_ffi_same_types(ZEND_FFI_TYPE(old->type), ZEND_FFI_TYPE(tag->type));
}
