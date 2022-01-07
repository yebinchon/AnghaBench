
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int value; } ;
struct TYPE_6__ {TYPE_2__* num; } ;
typedef TYPE_1__ RCore ;


 int cmd_seek_opcode_backward (TYPE_1__*,int) ;
 int cmd_seek_opcode_forward (TYPE_1__*,int) ;
 int eprintf (char*) ;
 int r_num_math (TYPE_2__*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void cmd_seek_opcode(RCore *core, const char *input) {
 if (input[0] == '?') {
  eprintf ("Usage: so [-][n]\n");
  return;
 }
 if (!strcmp (input, "-")) {
  input = "-1";
 }
 int n = r_num_math (core->num, input);
 if (n == 0) {
  n = 1;
 }
 int val = (n < 0)
  ? cmd_seek_opcode_backward (core, -n)
  : cmd_seek_opcode_forward (core, n);
 core->num->value = val;
}
