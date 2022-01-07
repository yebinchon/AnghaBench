
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int eprintf (char*) ;
 int help_msg_z_slash ;
 int r_core_cmd_help (int *,int ) ;
 int search (int *,int,int) ;

__attribute__((used)) static int cmdSearch(void *data, const char *input) {
 RCore *core = (RCore *) data;

 switch (*input) {
 case 0:
 case '*':
  return search (core, input[0] == '*', 0);
 case 'f':
  switch (input[1]) {
  case 0:
  case '*':
   return search (core, input[1] == '*', 1);
  default:
   eprintf ("usage: z/[f*]\n");
   return 0;
  }
 case '?':
  r_core_cmd_help (core, help_msg_z_slash);
  break;
 default:
  eprintf ("usage: z/[*]\n");
  return 0;
 }

 return 1;
}
