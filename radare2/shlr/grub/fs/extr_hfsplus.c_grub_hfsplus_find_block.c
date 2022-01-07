
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_hfsplus_extent {int count; int start; } ;
typedef int grub_size_t ;


 int grub_be_to_cpu32 (int ) ;

__attribute__((used)) static int
grub_hfsplus_find_block (struct grub_hfsplus_extent *extent,
    int *fileblock)
{
  int i;
  grub_size_t blksleft = *fileblock;


  for (i = 0; i < 8; i++)
    {
      if (blksleft < grub_be_to_cpu32 (extent[i].count))
 return grub_be_to_cpu32 (extent[i].start) + blksleft;
      blksleft -= grub_be_to_cpu32 (extent[i].count);
    }

  *fileblock = blksleft;
  return -1;
}
