
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_btree_node {int bn_flags; } ;
typedef int grub_uint64_t ;


 int NILFS_BTREE_NODE_EXTRA_PAD_SIZE ;
 int NILFS_BTREE_NODE_ROOT ;

__attribute__((used)) static inline grub_uint64_t *
grub_nilfs2_btree_node_dkeys (struct grub_nilfs2_btree_node *node)
{
  return (grub_uint64_t *) ((char *) (node + 1) +
       ((node->bn_flags & NILFS_BTREE_NODE_ROOT) ?
        0 : NILFS_BTREE_NODE_EXTRA_PAD_SIZE));
}
