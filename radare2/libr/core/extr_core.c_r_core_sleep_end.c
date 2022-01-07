
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCoreTask ;
typedef int RCore ;


 int r_core_task_sleep_end (int *) ;

__attribute__((used)) static void r_core_sleep_end (RCore *core, void *user) {
 RCoreTask *task = (RCoreTask *)user;
 if (task) {
  r_core_task_sleep_end (task);
 }
}
