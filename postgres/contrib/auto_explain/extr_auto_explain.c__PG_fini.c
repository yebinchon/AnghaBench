
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExecutorEnd_hook ;
 int ExecutorFinish_hook ;
 int ExecutorRun_hook ;
 int ExecutorStart_hook ;
 int prev_ExecutorEnd ;
 int prev_ExecutorFinish ;
 int prev_ExecutorRun ;
 int prev_ExecutorStart ;

void
_PG_fini(void)
{

 ExecutorStart_hook = prev_ExecutorStart;
 ExecutorRun_hook = prev_ExecutorRun;
 ExecutorFinish_hook = prev_ExecutorFinish;
 ExecutorEnd_hook = prev_ExecutorEnd;
}
