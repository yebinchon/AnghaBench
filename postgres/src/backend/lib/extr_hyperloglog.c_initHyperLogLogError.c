
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int hyperLogLogState ;
typedef int Size ;


 int initHyperLogLog (int *,int) ;
 double sqrt (double) ;

void
initHyperLogLogError(hyperLogLogState *cState, double error)
{
 uint8 bwidth = 4;

 while (bwidth < 16)
 {
  double m = (Size) 1 << bwidth;

  if (1.04 / sqrt(m) < error)
   break;
  bwidth++;
 }

 initHyperLogLog(cState, bwidth);
}
