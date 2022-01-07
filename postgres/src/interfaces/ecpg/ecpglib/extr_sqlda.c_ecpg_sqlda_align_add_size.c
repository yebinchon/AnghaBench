
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
ecpg_sqlda_align_add_size(long offset, int alignment, int size, long *current, long *next)
{
 if (offset % alignment)
  offset += alignment - (offset % alignment);
 if (current)
  *current = offset;
 offset += size;
 if (next)
  *next = offset;
}
