
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_4__ {TYPE_1__* object; scalar_t__ current_index; } ;
typedef TYPE_2__ date_period_it ;
struct TYPE_3__ {int start; scalar_t__ current; } ;


 int date_period_it_invalidate_current (int *) ;
 scalar_t__ timelib_time_clone (int ) ;
 int timelib_time_dtor (scalar_t__) ;
 int zend_throw_error (int *,char*) ;

__attribute__((used)) static void date_period_it_rewind(zend_object_iterator *iter)
{
 date_period_it *iterator = (date_period_it *)iter;

 iterator->current_index = 0;
 if (iterator->object->current) {
  timelib_time_dtor(iterator->object->current);
 }
 if (!iterator->object->start) {
  zend_throw_error(((void*)0), "DatePeriod has not been initialized correctly");
  return;
 }
 iterator->object->current = timelib_time_clone(iterator->object->start);
 date_period_it_invalidate_current(iter);
}
