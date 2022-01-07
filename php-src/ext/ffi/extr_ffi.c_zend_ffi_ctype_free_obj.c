
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_2__ {int type; } ;
typedef TYPE_1__ zend_ffi_ctype ;


 int zend_ffi_type_dtor (int ) ;

__attribute__((used)) static void zend_ffi_ctype_free_obj(zend_object *object)
{
 zend_ffi_ctype *ctype = (zend_ffi_ctype*)object;

 zend_ffi_type_dtor(ctype->type);
}
