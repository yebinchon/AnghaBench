
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sse; scalar_t__ us; } ;
typedef TYPE_1__ timelib_time ;



int timelib_time_compare(timelib_time *t1, timelib_time *t2)
{
 if (t1->sse == t2->sse) {
  if (t1->us == t2->us) {
   return 0;
  }

  return (t1->us < t2->us) ? -1 : 1;
 }

 return (t1->sse < t2->sse) ? -1 : 1;
}
