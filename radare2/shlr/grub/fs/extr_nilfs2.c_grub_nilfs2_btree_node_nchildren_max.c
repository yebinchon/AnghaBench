
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_data {int dummy; } ;
struct grub_nilfs2_btree_node {int bn_flags; } ;
typedef int grub_uint64_t ;


 int NILFS2_BLOCK_SIZE (struct grub_nilfs2_data*) ;
 int NILFS_BTREE_NODE_EXTRA_PAD_SIZE ;
 int NILFS_BTREE_NODE_ROOT ;

__attribute__((used)) static inline int
grub_nilfs2_btree_node_nchildren_max (struct grub_nilfs2_data *data,
          struct grub_nilfs2_btree_node *node)
{
  int node_children_max = ((NILFS2_BLOCK_SIZE (data) -
       sizeof (struct grub_nilfs2_btree_node) -
       NILFS_BTREE_NODE_EXTRA_PAD_SIZE) /
      (sizeof (grub_uint64_t) + sizeof (grub_uint64_t)));

  return (node->bn_flags & NILFS_BTREE_NODE_ROOT) ? 3 : node_children_max;
}
