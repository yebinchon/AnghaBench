
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {char const* asm_buf; } ;



const char*
ud_insn_asm(const struct ud* u)
{
  return u->asm_buf;
}
