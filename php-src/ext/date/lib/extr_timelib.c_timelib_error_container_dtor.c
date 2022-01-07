
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int warning_count; int error_count; struct TYPE_4__* error_messages; struct TYPE_4__* message; struct TYPE_4__* warning_messages; } ;
typedef TYPE_1__ timelib_error_container ;


 int timelib_free (TYPE_1__*) ;

void timelib_error_container_dtor(timelib_error_container *errors)
{
 int i;

 for (i = 0; i < errors->warning_count; i++) {
  timelib_free(errors->warning_messages[i].message);
 }
 timelib_free(errors->warning_messages);
 for (i = 0; i < errors->error_count; i++) {
  timelib_free(errors->error_messages[i].message);
 }
 timelib_free(errors->error_messages);
 timelib_free(errors);
}
