
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arg; int (* function ) (int,int ) ;} ;


 scalar_t__ GetCurrentThreadId () ;
 int _endthreadex (int) ;
 int exit (int) ;
 scalar_t__ mainThreadId ;
 int on_exit_nicely_index ;
 TYPE_1__* on_exit_nicely_list ;
 scalar_t__ parallel_init_done ;
 int stub1 (int,int ) ;

void
exit_nicely(int code)
{
 int i;

 for (i = on_exit_nicely_index - 1; i >= 0; i--)
  on_exit_nicely_list[i].function(code,
          on_exit_nicely_list[i].arg);






 exit(code);
}
