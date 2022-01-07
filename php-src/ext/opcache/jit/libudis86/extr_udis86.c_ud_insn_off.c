
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ud {int insn_offset; } ;



uint64_t
ud_insn_off(const struct ud* u)
{
  return u->insn_offset;
}
