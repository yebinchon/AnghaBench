
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {unsigned int inp_ctr; } ;



extern unsigned int
ud_insn_len(const struct ud* u)
{
  return u->inp_ctr;
}
