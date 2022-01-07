
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_5__ {int fn_flags; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
typedef TYPE_2__ zend_function ;
typedef int zend_class_entry ;


 int add_next_index_zval (int *,int *) ;
 int reflection_method_factory (int *,TYPE_2__*,int *,int *) ;

__attribute__((used)) static void _addmethod(zend_function *mptr, zend_class_entry *ce, zval *retval, zend_long filter)
{
 if (mptr->common.fn_flags & filter) {
  zval method;
  reflection_method_factory(ce, mptr, ((void*)0), &method);
  add_next_index_zval(retval, &method);
 }
}
