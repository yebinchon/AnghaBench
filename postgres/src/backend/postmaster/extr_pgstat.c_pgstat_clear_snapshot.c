
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MemoryContextDelete (int *) ;
 int * localBackendStatusTable ;
 scalar_t__ localNumBackends ;
 int * pgStatDBHash ;
 int * pgStatLocalContext ;

void
pgstat_clear_snapshot(void)
{

 if (pgStatLocalContext)
  MemoryContextDelete(pgStatLocalContext);


 pgStatLocalContext = ((void*)0);
 pgStatDBHash = ((void*)0);
 localBackendStatusTable = ((void*)0);
 localNumBackends = 0;
}
