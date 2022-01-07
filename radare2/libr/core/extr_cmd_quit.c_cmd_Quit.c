
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {TYPE_2__* num; int config; } ;
typedef TYPE_1__ RCore ;


 scalar_t__ IS_DIGIT (char const) ;
 int exit (int ) ;
 int r_config_set (int ,char*,char*) ;
 int r_num_math (TYPE_2__*,char const*) ;
 int r_sandbox_enable (int) ;

__attribute__((used)) static int cmd_Quit(void *data, const char *input) {
 RCore *core = (RCore *)data;
 if (input[0] == '!') {
  if (input[1] == '!') {
   if (!r_sandbox_enable (0)) {
    exit (0);
   }
   return -2;
  }
  r_config_set (core->config, "scr.histsave", "false");
 }
 if (IS_DIGIT (input[0]) || input[0] == ' ') {
  core->num->value = r_num_math (core->num, input);
 } else {
  core->num->value = -1;
 }
 return -2;
}
