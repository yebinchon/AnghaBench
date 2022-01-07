
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ intern; } ;
typedef TYPE_2__ date_period_it ;


 int date_period_it_invalidate_current (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void date_period_it_dtor(zend_object_iterator *iter)
{
 date_period_it *iterator = (date_period_it *)iter;

 date_period_it_invalidate_current(iter);

 zval_ptr_dtor(&iterator->intern.data);
}
