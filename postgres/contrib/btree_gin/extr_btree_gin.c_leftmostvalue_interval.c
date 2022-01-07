
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ month; scalar_t__ day; int time; } ;
typedef TYPE_1__ Interval ;
typedef int Datum ;


 int DT_NOBEGIN ;
 int IntervalPGetDatum (TYPE_1__*) ;
 TYPE_1__* palloc (int) ;

__attribute__((used)) static Datum
leftmostvalue_interval(void)
{
 Interval *v = palloc(sizeof(Interval));

 v->time = DT_NOBEGIN;
 v->day = 0;
 v->month = 0;
 return IntervalPGetDatum(v);
}
