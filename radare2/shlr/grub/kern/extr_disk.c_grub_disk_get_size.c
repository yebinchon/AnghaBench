
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int grub_uint64_t ;
typedef TYPE_1__* grub_disk_t ;
struct TYPE_3__ {int total_sectors; scalar_t__ partition; } ;


 int grub_partition_get_len (scalar_t__) ;

grub_uint64_t
grub_disk_get_size (grub_disk_t disk)
{
  if (disk->partition)
    return grub_partition_get_len (disk->partition);
  else
    return disk->total_sectors;
}
