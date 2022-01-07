
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCoreTask ;
typedef int RCore ;


 int r_core_task_continue (int *) ;
 int * r_core_task_self (int *) ;

__attribute__((used)) static void r_core_break (RCore *core) {

 RCoreTask *task = r_core_task_self (core);
 if (task) {
  r_core_task_continue (task);
 }
}
