
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCoreTaskOneShot ;
typedef int RCore ;


 scalar_t__ __do_panels_refresh ;
 int r_core_task_enqueue_oneshot (int *,int ,int *) ;

void __do_panels_refreshOneShot(RCore *core) {
 r_core_task_enqueue_oneshot (core, (RCoreTaskOneShot) __do_panels_refresh, core);
}
