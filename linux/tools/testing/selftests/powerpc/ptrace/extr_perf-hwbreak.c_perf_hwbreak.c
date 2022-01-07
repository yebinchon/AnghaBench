
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_IF (int) ;
 int perf_breakpoint_supported () ;
 int runtest () ;
 int srand (int ) ;
 int time (int *) ;

__attribute__((used)) static int perf_hwbreak(void)
{
 srand ( time(((void*)0)) );

 SKIP_IF(!perf_breakpoint_supported());

 return runtest();
}
