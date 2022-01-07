
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DirectFunctionCall1 (int ,int ) ;
 int Float8GetDatum (double) ;
 int setseed ;

void
assign_random_seed(double newval, void *extra)
{

 if (*((int *) extra))
  DirectFunctionCall1(setseed, Float8GetDatum(newval));
 *((int *) extra) = 0;
}
