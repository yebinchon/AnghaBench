
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_2__ {int current; } ;
typedef TYPE_1__ date_period_it ;


 scalar_t__ IS_UNDEF ;
 int ZVAL_UNDEF (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void date_period_it_invalidate_current(zend_object_iterator *iter)
{
 date_period_it *iterator = (date_period_it *)iter;

 if (Z_TYPE(iterator->current) != IS_UNDEF) {
  zval_ptr_dtor(&iterator->current);
  ZVAL_UNDEF(&iterator->current);
 }
}
