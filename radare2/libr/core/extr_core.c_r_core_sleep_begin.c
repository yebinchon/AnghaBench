
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void RCoreTask ;
typedef int RCore ;


 void* r_core_task_self (int *) ;
 int r_core_task_sleep_begin (void*) ;

__attribute__((used)) static void *r_core_sleep_begin (RCore *core) {
 RCoreTask *task = r_core_task_self (core);
 if (task) {
  r_core_task_sleep_begin (task);
 }
 return task;
}
