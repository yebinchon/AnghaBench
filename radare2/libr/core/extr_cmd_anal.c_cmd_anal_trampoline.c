
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int num; int config; } ;
typedef TYPE_1__ RCore ;


 int free (char*) ;
 int print_trampolines (TYPE_1__*,int ,int ,int) ;
 int r_config_get_i (int ,char*) ;
 int r_num_math (int ,char*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static void cmd_anal_trampoline(RCore *core, const char *input) {
 int bits = r_config_get_i (core->config, "asm.bits");
 char *p, *inp = strdup (input);
 p = strchr (inp, ' ');
 if (p) {
  *p = 0;
 }
 ut64 a = r_num_math (core->num, inp);
 ut64 b = p? r_num_math (core->num, p + 1): 0;
 free (inp);

 switch (bits) {
 case 32:
  print_trampolines (core, a, b, 4);
  break;
 case 64:
  print_trampolines (core, a, b, 8);
  break;
 }
}
