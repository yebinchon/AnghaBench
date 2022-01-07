
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct find_func_closure {int partnum; scalar_t__ p; } ;
typedef scalar_t__ grub_partition_t ;
typedef TYPE_1__* grub_partition_map_t ;
typedef int grub_disk_t ;
struct TYPE_3__ {int (* iterate ) (int ,int ,struct find_func_closure*) ;} ;


 int find_func ;
 scalar_t__ grub_errno ;
 int grub_free (scalar_t__) ;
 int stub1 (int ,int ,struct find_func_closure*) ;

__attribute__((used)) static grub_partition_t
grub_partition_map_probe (const grub_partition_map_t partmap,
     grub_disk_t disk, int partnum)
{
  struct find_func_closure c;

  c.partnum = partnum;
  c.p = 0;
  partmap->iterate (disk, find_func, &c);
  if (grub_errno)
    goto fail;

  return c.p;

 fail:
  grub_free (c.p);
  return 0;
}
