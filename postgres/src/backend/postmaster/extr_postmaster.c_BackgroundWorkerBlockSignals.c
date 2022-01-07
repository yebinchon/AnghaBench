
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BlockSig ;
 int PG_SETMASK (int *) ;

void
BackgroundWorkerBlockSignals(void)
{
 PG_SETMASK(&BlockSig);
}
