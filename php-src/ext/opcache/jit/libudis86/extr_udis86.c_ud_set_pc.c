
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ud {int pc; } ;



extern void
ud_set_pc(struct ud* u, uint64_t o)
{
  u->pc = o;
}
