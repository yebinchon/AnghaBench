
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_inode {int * i_bmap; } ;
struct grub_nilfs2_btree_node {int dummy; } ;



__attribute__((used)) static inline struct grub_nilfs2_btree_node *
grub_nilfs2_btree_get_root (struct grub_nilfs2_inode *inode)
{
  return (struct grub_nilfs2_btree_node *) &inode->i_bmap[0];
}
