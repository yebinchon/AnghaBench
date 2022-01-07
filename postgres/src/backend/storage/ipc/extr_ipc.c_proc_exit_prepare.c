
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arg; int (* function ) (int,int ) ;} ;


 scalar_t__ CritSectionCount ;
 int DEBUG3 ;
 int InterruptHoldoffCount ;
 int InterruptPending ;
 int ProcDiePending ;
 int QueryCancelPending ;
 int * debug_query_string ;
 int elog (int ,char*,int,scalar_t__) ;
 int * error_context_stack ;
 scalar_t__ on_proc_exit_index ;
 TYPE_1__* on_proc_exit_list ;
 int proc_exit_inprogress ;
 int shmem_exit (int) ;
 int stub1 (int,int ) ;

__attribute__((used)) static void
proc_exit_prepare(int code)
{




 proc_exit_inprogress = 1;






 InterruptPending = 0;
 ProcDiePending = 0;
 QueryCancelPending = 0;
 InterruptHoldoffCount = 1;
 CritSectionCount = 0;
 error_context_stack = ((void*)0);

 debug_query_string = ((void*)0);


 shmem_exit(code);

 elog(DEBUG3, "proc_exit(%d): %d callbacks to make",
   code, on_proc_exit_index);
 while (--on_proc_exit_index >= 0)
  on_proc_exit_list[on_proc_exit_index].function(code,
                on_proc_exit_list[on_proc_exit_index].arg);

 on_proc_exit_index = 0;
}
