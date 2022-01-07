
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;


 int zend_user_it_invalidate_current (TYPE_1__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_array_it_dtor(zend_object_iterator *iter)
{
 zend_user_it_invalidate_current(iter);
 zval_ptr_dtor(&iter->data);
}
