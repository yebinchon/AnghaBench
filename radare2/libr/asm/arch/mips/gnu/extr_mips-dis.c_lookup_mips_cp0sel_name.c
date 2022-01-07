
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cp0sel_name {unsigned int cp0reg; unsigned int sel; } ;



__attribute__((used)) static const struct mips_cp0sel_name *
lookup_mips_cp0sel_name (const struct mips_cp0sel_name *names,
    unsigned int len,
    unsigned int cp0reg,
    unsigned int sel)
{
  unsigned int i;

  for (i = 0; i < len; i++) {
   if (names[i].cp0reg == cp0reg && names[i].sel == sel) {
    return &names[i];
   }
  }
  return ((void*)0);
}
