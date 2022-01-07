
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int argc; } ;
typedef TYPE_1__ CMDLINE_ARGS ;



int cmdline_getarg_count(void* list)
{
 CMDLINE_ARGS* p_args = (CMDLINE_ARGS*)list;


 return(p_args->argc);
}
