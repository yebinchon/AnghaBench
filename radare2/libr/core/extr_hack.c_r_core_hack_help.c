
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_core_cmd_help (int const*,char const**) ;

void r_core_hack_help(const RCore *core) {
 const char* help_msg[] = {
  "wao", " [op]", "performs a modification on current opcode",
  "wao", " nop", "nop current opcode",
  "wao", " jinf", "assemble an infinite loop",
  "wao", " jz", "make current opcode conditional (zero)",
  "wao", " jnz", "make current opcode conditional (not zero)",
  "wao", " ret1", "make the current opcode return 1",
  "wao", " ret0", "make the current opcode return 0",
  "wao", " retn", "make the current opcode return -1",
  "wao", " nocj", "remove conditional operation from branch (make it unconditional)",
  "wao", " trap", "make the current opcode a trap",
  "wao", " recj", "reverse (swap) conditional branch instruction",
  "WIP:", "", "not all archs are supported and not all commands work on all archs",
  ((void*)0)
 };
 r_core_cmd_help (core, help_msg);
}
