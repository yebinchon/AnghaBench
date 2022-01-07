
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ optc; } ;
struct TYPE_4__ {scalar_t__ parsed; TYPE_1__ glb_args; TYPE_1__* opt_args; } ;


 scalar_t__ CMDLINE_TRUE ;
 TYPE_2__ cmdline_data ;
 int cmdline_print_args (TYPE_1__*,char**) ;
 int printf (char*,...) ;

void cmdline_print(char* argv[])
{
 int i;


 if(cmdline_data.parsed != CMDLINE_TRUE)
 {
  printf("The command line has not been parsed yet.\n");
  return;
 }


 for( i = 0; i < 26; i++ )
 {

  if(cmdline_data.opt_args[i].optc !=0 )
  {

   printf("Option: -%c\n", (char)('a'+i));
   cmdline_print_args(&(cmdline_data.opt_args[i]), argv);
  }
 }


 printf("Global arguments:\n");
 cmdline_print_args(&(cmdline_data.glb_args), argv);
}
