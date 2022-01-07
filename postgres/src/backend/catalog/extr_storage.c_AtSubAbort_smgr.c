
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smgrDoPendingDeletes (int) ;

void
AtSubAbort_smgr(void)
{
 smgrDoPendingDeletes(0);
}
