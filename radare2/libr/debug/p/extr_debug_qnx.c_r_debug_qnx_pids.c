
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ free; } ;
typedef scalar_t__ RListFree ;
typedef TYPE_1__ RList ;
typedef int RDebug ;


 int __r_debug_pid_free ;
 int __r_debug_pid_new (char*,int,char,int ) ;
 int desc ;
 int pidlist_cb ;
 int qnxr_pidlist (int ,TYPE_1__*,int *) ;
 int r_list_append (TYPE_1__*,int ) ;
 TYPE_1__* r_list_new () ;

__attribute__((used)) static RList *r_debug_qnx_pids (RDebug *dbg, int pid) {
 RList *list = r_list_new ();
 if (!list) {
  return ((void*)0);
 }
 list->free = (RListFree)&__r_debug_pid_free;


 if (pid) {
  r_list_append (list, __r_debug_pid_new ("(current)", pid, 's', 0));
 } else {
  qnxr_pidlist (desc, list, &pidlist_cb);
 }

 return list;
}
