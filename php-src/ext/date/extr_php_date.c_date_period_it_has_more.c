
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_11__ {int have_relative; scalar_t__ sse; scalar_t__ sse_uptodate; int relative; } ;
typedef TYPE_3__ timelib_time ;
struct TYPE_12__ {scalar_t__ recurrences; TYPE_2__* end; TYPE_3__* current; int * interval; int include_start_date; } ;
typedef TYPE_4__ php_period_obj ;
struct TYPE_9__ {int data; } ;
struct TYPE_13__ {scalar_t__ current_index; TYPE_1__ intern; } ;
typedef TYPE_5__ date_period_it ;
struct TYPE_10__ {scalar_t__ sse; } ;


 int FAILURE ;
 int SUCCESS ;
 TYPE_4__* Z_PHPPERIOD_P (int *) ;
 int timelib_update_from_sse (TYPE_3__*) ;
 int timelib_update_ts (TYPE_3__*,int *) ;

__attribute__((used)) static int date_period_it_has_more(zend_object_iterator *iter)
{
 date_period_it *iterator = (date_period_it *)iter;
 php_period_obj *object = Z_PHPPERIOD_P(&iterator->intern.data);
 timelib_time *it_time = object->current;


 if (!object->include_start_date || iterator->current_index > 0) {
  it_time->have_relative = 1;
  it_time->relative = *object->interval;
  it_time->sse_uptodate = 0;
  timelib_update_ts(it_time, ((void*)0));
  timelib_update_from_sse(it_time);
 }

 if (object->end) {
  return object->current->sse < object->end->sse ? SUCCESS : FAILURE;
 } else {
  return (iterator->current_index < object->recurrences) ? SUCCESS : FAILURE;
 }
}
