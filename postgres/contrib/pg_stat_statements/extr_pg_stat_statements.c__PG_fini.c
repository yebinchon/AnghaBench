
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExecutorEnd_hook ;
 int ExecutorFinish_hook ;
 int ExecutorRun_hook ;
 int ExecutorStart_hook ;
 int ProcessUtility_hook ;
 int post_parse_analyze_hook ;
 int prev_ExecutorEnd ;
 int prev_ExecutorFinish ;
 int prev_ExecutorRun ;
 int prev_ExecutorStart ;
 int prev_ProcessUtility ;
 int prev_post_parse_analyze_hook ;
 int prev_shmem_startup_hook ;
 int shmem_startup_hook ;

void
_PG_fini(void)
{

 shmem_startup_hook = prev_shmem_startup_hook;
 post_parse_analyze_hook = prev_post_parse_analyze_hook;
 ExecutorStart_hook = prev_ExecutorStart;
 ExecutorRun_hook = prev_ExecutorRun;
 ExecutorFinish_hook = prev_ExecutorFinish;
 ExecutorEnd_hook = prev_ExecutorEnd;
 ProcessUtility_hook = prev_ProcessUtility;
}
