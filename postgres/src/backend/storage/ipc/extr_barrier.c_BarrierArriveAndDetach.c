
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Barrier ;


 int BarrierDetachImpl (int *,int) ;

bool
BarrierArriveAndDetach(Barrier *barrier)
{
 return BarrierDetachImpl(barrier, 1);
}
