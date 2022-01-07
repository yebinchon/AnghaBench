
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int assembly; } ;
struct TYPE_6__ {int * parser; int assembler; int config; int offset; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RAsmCode ;


 int eprintf (char*) ;
 int r_asm_code_free (TYPE_2__*) ;
 TYPE_2__* r_asm_mdisassemble_hexstr (int ,int *,char const*) ;
 int r_asm_set_pc (int ,int ) ;
 int r_config_get_i (int ,char*) ;
 int r_cons_print (int ) ;

__attribute__((used)) static void __cmd_pad(RCore *core, const char *arg) {
 if (*arg == '?') {
  eprintf ("Usage: pad [hexpairs] # disassembly given bytes\n");
  return;
 }
 r_asm_set_pc (core->assembler, core->offset);
 bool is_pseudo = r_config_get_i (core->config, "asm.pseudo");
 RAsmCode *acode = r_asm_mdisassemble_hexstr (core->assembler, is_pseudo ? core->parser : ((void*)0), arg);
 if (acode) {
  r_cons_print (acode->assembly);
  r_asm_code_free (acode);
 } else {
  eprintf ("Invalid hexstr\n");
 }
}
