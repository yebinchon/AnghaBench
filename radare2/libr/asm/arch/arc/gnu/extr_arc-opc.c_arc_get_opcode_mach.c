
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC_MACH_BIG ;

int
arc_get_opcode_mach (int bfd_mach, int big_p)
{
  static int mach_type_map[] =
    {
      132,
      131,
      130,
      128,
      129
    };

  return mach_type_map[bfd_mach] | (big_p ? ARC_MACH_BIG : 0);
}
