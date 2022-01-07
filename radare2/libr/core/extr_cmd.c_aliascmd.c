
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rcmd; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int r_cmd_alias_del (int ,char const*) ;
 int r_cmd_alias_set (int ,char const*,char*,int) ;
 int r_core_cmd0 (TYPE_1__*,char*) ;

__attribute__((used)) static void aliascmd(RCore *core, const char *str) {
 switch (str[0]) {
 case '\0':
  r_core_cmd0 (core, "$");
  break;
 case '-':
  if (str[1]) {
   r_cmd_alias_del (core->rcmd, str + 2);
  } else {
   r_cmd_alias_del (core->rcmd, ((void*)0));

  }
  break;
 case '?':
  eprintf ("Usage: =$[-][remotecmd]  # remote command alias\n");
  eprintf (" =$dr   # makes 'dr' alias for =!dr\n");
  eprintf (" =$-dr  # unset 'dr' alias\n");
  break;
 default:
  r_cmd_alias_set (core->rcmd, str, "", 1);
  break;
 }
}
