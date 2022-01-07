
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_10__ {scalar_t__ tz_info; scalar_t__ tz_abbr; } ;
typedef TYPE_2__ timelib_time ;
struct TYPE_11__ {int start_ce; TYPE_2__* current; } ;
typedef TYPE_3__ php_period_obj ;
struct TYPE_12__ {TYPE_2__* time; } ;
typedef TYPE_4__ php_date_obj ;
struct TYPE_9__ {int data; } ;
struct TYPE_13__ {int current; TYPE_1__ intern; } ;
typedef TYPE_5__ date_period_it ;


 TYPE_4__* Z_PHPDATE_P (int *) ;
 TYPE_3__* Z_PHPPERIOD_P (int *) ;
 int php_date_instantiate (int ,int *) ;
 scalar_t__ timelib_strdup (scalar_t__) ;
 TYPE_2__* timelib_time_ctor () ;

__attribute__((used)) static zval *date_period_it_current_data(zend_object_iterator *iter)
{
 date_period_it *iterator = (date_period_it *)iter;
 php_period_obj *object = Z_PHPPERIOD_P(&iterator->intern.data);
 timelib_time *it_time = object->current;
 php_date_obj *newdateobj;


 php_date_instantiate(object->start_ce, &iterator->current);
 newdateobj = Z_PHPDATE_P(&iterator->current);
 newdateobj->time = timelib_time_ctor();
 *newdateobj->time = *it_time;
 if (it_time->tz_abbr) {
  newdateobj->time->tz_abbr = timelib_strdup(it_time->tz_abbr);
 }
 if (it_time->tz_info) {
  newdateobj->time->tz_info = it_time->tz_info;
 }

 return &iterator->current;
}
