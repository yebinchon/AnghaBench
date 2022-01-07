
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ time; int zone; } ;
typedef TYPE_1__ TimeTzADT ;
typedef scalar_t__ TimeOffset ;


 int USECS_PER_SEC ;

__attribute__((used)) static int
timetz_cmp_internal(TimeTzADT *time1, TimeTzADT *time2)
{
 TimeOffset t1,
    t2;


 t1 = time1->time + (time1->zone * USECS_PER_SEC);
 t2 = time2->time + (time2->zone * USECS_PER_SEC);

 if (t1 > t2)
  return 1;
 if (t1 < t2)
  return -1;





 if (time1->zone > time2->zone)
  return 1;
 if (time1->zone < time2->zone)
  return -1;

 return 0;
}
