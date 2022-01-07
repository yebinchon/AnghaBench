
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {long long value; } ;
struct TYPE_5__ {TYPE_2__* num; } ;
typedef TYPE_1__ RCore ;


 int cmd_Quit (TYPE_1__*,char const*) ;
 int help_msg_q ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_num_math (TYPE_2__*,char const*) ;

__attribute__((used)) static int cmd_quit(void *data, const char *input) {
 RCore *core = (RCore *)data;
 if (input)
 switch (*input) {
 case '?':
  r_core_cmd_help (core, help_msg_q);
  break;
 case '!':
  return cmd_Quit (core, input);
 case '\0':
  core->num->value = 0LL;
  return -2;
 default:
  while (*input == ' ') {
   input++;
  }
  if (*input) {
   r_num_math (core->num, input);
  } else {
   core->num->value = 0LL;
  }

  if (*input == 'y') {
   core->num->value = 5;
  } else if (*input == 'n') {
   core->num->value = 1;
  }

  if (input[1] == 'y') {
   core->num->value += 10;
  } else if (input[1] == 'n') {
   core->num->value += 2;
  }


  return -2;
 }
 return 0;
}
