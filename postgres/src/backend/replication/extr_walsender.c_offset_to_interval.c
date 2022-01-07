
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TimeOffset ;
struct TYPE_4__ {int time; scalar_t__ day; scalar_t__ month; } ;
typedef TYPE_1__ Interval ;


 TYPE_1__* palloc (int) ;

__attribute__((used)) static Interval *
offset_to_interval(TimeOffset offset)
{
 Interval *result = palloc(sizeof(Interval));

 result->month = 0;
 result->day = 0;
 result->time = offset;

 return result;
}
