
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MaxBackends ;
 int NUM_AUXILIARY_PROCS ;

int
ProcGlobalSemas(void)
{




 return MaxBackends + NUM_AUXILIARY_PROCS;
}
