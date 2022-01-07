
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_afs_sblock {int block_per_group; } ;
struct grub_afs_blockrun {int start; int group; } ;
typedef int grub_afs_off_t ;


 int grub_afs_to_cpu16 (int ) ;
 scalar_t__ grub_afs_to_cpu32 (int ) ;

__attribute__((used)) static grub_afs_off_t
grub_afs_run_to_num (struct grub_afs_sblock *sb,
                     struct grub_afs_blockrun *run)
{
  return ((grub_afs_off_t) grub_afs_to_cpu32 (run->group)
   * sb->block_per_group + grub_afs_to_cpu16 (run->start));
}
