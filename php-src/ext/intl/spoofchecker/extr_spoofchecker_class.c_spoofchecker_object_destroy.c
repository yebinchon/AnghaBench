
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * uspoof; } ;
typedef TYPE_1__ Spoofchecker_object ;


 int SPOOFCHECKER_ERROR_P (TYPE_1__*) ;
 int intl_error_reset (int ) ;
 int uspoof_close (int *) ;

void spoofchecker_object_destroy(Spoofchecker_object* co)
{
 if (!co) {
  return;
 }

 if (co->uspoof) {
  uspoof_close(co->uspoof);
  co->uspoof = ((void*)0);
 }

 intl_error_reset(SPOOFCHECKER_ERROR_P(co));
}
