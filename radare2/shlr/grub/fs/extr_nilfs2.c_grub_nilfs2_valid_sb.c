
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_super_block {int s_rev_level; int s_magic; } ;


 scalar_t__ NILFS2_SUPER_MAGIC ;
 scalar_t__ NILFS_SUPORT_REV ;
 scalar_t__ grub_le_to_cpu16 (int ) ;
 scalar_t__ grub_le_to_cpu32 (int ) ;

__attribute__((used)) static int
grub_nilfs2_valid_sb (struct grub_nilfs2_super_block *sbp)
{
  if (grub_le_to_cpu16 (sbp->s_magic) != NILFS2_SUPER_MAGIC)
    return 0;

  if (grub_le_to_cpu32 (sbp->s_rev_level) != NILFS_SUPORT_REV)
    return 0;

  return 1;
}
