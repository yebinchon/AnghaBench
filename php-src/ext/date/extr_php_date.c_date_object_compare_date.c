
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {TYPE_2__* time; } ;
typedef TYPE_1__ php_date_obj ;
struct TYPE_7__ {int tz_info; int sse_uptodate; } ;


 int E_WARNING ;
 int ZEND_COMPARE_OBJECTS_FALLBACK (int *,int *) ;
 TYPE_1__* Z_PHPDATE_P (int *) ;
 int php_error_docref (int *,int ,char*) ;
 int timelib_time_compare (TYPE_2__*,TYPE_2__*) ;
 int timelib_update_ts (TYPE_2__*,int ) ;

__attribute__((used)) static int date_object_compare_date(zval *d1, zval *d2)
{
 php_date_obj *o1;
 php_date_obj *o2;

 ZEND_COMPARE_OBJECTS_FALLBACK(d1, d2);

 o1 = Z_PHPDATE_P(d1);
 o2 = Z_PHPDATE_P(d2);

 if (!o1->time || !o2->time) {
  php_error_docref(((void*)0), E_WARNING, "Trying to compare an incomplete DateTime or DateTimeImmutable object");
  return 1;
 }
 if (!o1->time->sse_uptodate) {
  timelib_update_ts(o1->time, o1->time->tz_info);
 }
 if (!o2->time->sse_uptodate) {
  timelib_update_ts(o2->time, o2->time->tz_info);
 }

 return timelib_time_compare(o1->time, o2->time);
}
