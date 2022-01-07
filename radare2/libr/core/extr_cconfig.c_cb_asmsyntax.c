
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* value; } ;
struct TYPE_4__ {int assembler; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RConfigNode ;


 int print_node_options (TYPE_2__*) ;
 int r_asm_set_syntax (int ,int) ;
 int r_asm_syntax_from_string (char*) ;

__attribute__((used)) static bool cb_asmsyntax(void *user, void *data) {
 RCore *core = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 if (*node->value == '?') {
  print_node_options (node);
  return 0;
 } else {
  int syntax = r_asm_syntax_from_string (node->value);
  if (syntax == -1) {
   return 0;
  }
  r_asm_set_syntax (core->assembler, syntax);
 }
 return 1;
}
