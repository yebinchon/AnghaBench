
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_5__ {int value; } ;
typedef TYPE_2__ zend_ffi_cdata_iterator ;


 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void zend_ffi_cdata_it_dtor(zend_object_iterator *iter)
{
 zval_ptr_dtor(&((zend_ffi_cdata_iterator*)iter)->value);
 zval_ptr_dtor(&iter->data);
}
