
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int index; struct TYPE_4__* p_next; } ;
struct TYPE_3__ {int argc; TYPE_2__* list; } ;
typedef TYPE_1__ CMDLINE_ARGS ;
typedef TYPE_2__ CMDLINE_ARG ;



int cmdline_getarg(void* list, int num)
{
 int i;
 CMDLINE_ARGS* p_args = (CMDLINE_ARGS*)list;
 CMDLINE_ARG* p_arg;


 for(i=0,p_arg=p_args->list; (p_arg!=((void*)0)) && (i<p_args->argc); i++, p_arg=p_arg->p_next)
 {

  if(i==num) return(p_arg->index);
 }

 return -1;
}
