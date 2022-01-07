
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zone; scalar_t__ time; } ;
typedef TYPE_1__ TimeTzADT ;
typedef int Datum ;


 int TimeTzADTPGetDatum (TYPE_1__*) ;
 TYPE_1__* palloc (int) ;

__attribute__((used)) static Datum
leftmostvalue_timetz(void)
{
 TimeTzADT *v = palloc(sizeof(TimeTzADT));

 v->time = 0;
 v->zone = -24 * 3600;

 return TimeTzADTPGetDatum(v);
}
