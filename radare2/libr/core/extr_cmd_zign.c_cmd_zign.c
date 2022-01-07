
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int anal; } ;
typedef TYPE_1__ RCore ;


 int cmdAdd (void*,char const*) ;
 int cmdCheck (void*,char const*) ;
 int cmdCompare (void*,char const*) ;
 int cmdFlirt (void*,char const*) ;
 int cmdInfo (void*,char const*) ;
 int cmdOpen (void*,char const*) ;
 int cmdSearch (void*,char const*) ;
 int cmdSpace (void*,char const*) ;
 int help_msg_z ;
 int r_core_cmd0 (TYPE_1__*,char*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_sign_delete (int ,char const*) ;
 int r_sign_list (int ,char const) ;

__attribute__((used)) static int cmd_zign(void *data, const char *input) {
 RCore *core = (RCore *) data;

 switch (*input) {
 case '\0':
 case '*':
 case 'q':
 case 'j':
  r_sign_list (core->anal, input[0]);
  break;
 case 'k':
  r_core_cmd0 (core, "k anal/zigns/*");
  break;
 case '-':
  r_sign_delete (core->anal, input + 1);
  break;
 case '.':
  return cmdCheck (data, input + 1);
 case 'o':
  return cmdOpen (data, input + 1);
 case 'g':
  return cmdAdd (data, "F");
 case 'a':
  return cmdAdd (data, input + 1);
 case 'f':
  return cmdFlirt (data, input + 1);
 case '/':
  return cmdSearch (data, input + 1);
 case 'c':
  return cmdCompare (data, input + 1);
 case 's':
  return cmdSpace (data, input + 1);
 case 'i':
  return cmdInfo (data, input + 1);
 case '?':
  r_core_cmd_help (core, help_msg_z);
  break;
 default:
  r_core_cmd_help (core, help_msg_z);
  return 0;
 }

 return 1;
}
