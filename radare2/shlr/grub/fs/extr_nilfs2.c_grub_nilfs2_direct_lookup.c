
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_inode {int * i_bmap; } ;
typedef int grub_uint64_t ;


 int grub_le_to_cpu64 (int ) ;

__attribute__((used)) static inline grub_uint64_t
grub_nilfs2_direct_lookup (struct grub_nilfs2_inode *inode, grub_uint64_t key)
{
  return grub_le_to_cpu64 (inode->i_bmap[1 + key]);
}
