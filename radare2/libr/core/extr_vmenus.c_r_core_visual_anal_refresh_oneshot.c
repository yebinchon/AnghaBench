
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCoreTaskOneShot ;
typedef int RCore ;


 int r_core_task_enqueue_oneshot (int *,int ,int *) ;
 scalar_t__ r_core_visual_anal_refresh ;

__attribute__((used)) static void r_core_visual_anal_refresh_oneshot (RCore *core) {
 r_core_task_enqueue_oneshot (core, (RCoreTaskOneShot) r_core_visual_anal_refresh, core);
}
