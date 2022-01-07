
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * opt_args; } ;


 TYPE_1__ cmdline_data ;

void* cmdline_getarg_list(char opt)
{
 int index = (opt - 'a');


 if((index < 0) || (index > 25))
 {

  return ((void*)0);
 }


 return((void*)(&cmdline_data.opt_args[index]));
}
