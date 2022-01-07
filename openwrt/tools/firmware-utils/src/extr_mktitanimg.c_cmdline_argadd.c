
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* p_next; } ;
struct TYPE_5__ {scalar_t__ argc; TYPE_2__* list; } ;
typedef TYPE_1__ CMDLINE_ARGS ;
typedef TYPE_2__ CMDLINE_ARG ;



__attribute__((used)) static void cmdline_argadd(CMDLINE_ARGS* p_arglist, CMDLINE_ARG* p_arg)
{
 CMDLINE_ARG* p_list;
 CMDLINE_ARG* p_prev=((void*)0);


 if(p_arglist->argc == 0)
 {

  p_arglist->list = p_arg;
 }
 else
 {

  for(p_list=p_arglist->list; p_list != ((void*)0); p_list=p_list->p_next)
   p_prev = p_list;


  p_prev->p_next=p_arg;
 }


 p_arglist->argc++;
}
