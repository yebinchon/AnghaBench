
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_data {int dummy; } ;
struct grub_nilfs2_btree_node {int dummy; } ;
typedef int grub_uint64_t ;


 scalar_t__ grub_nilfs2_btree_node_dkeys (struct grub_nilfs2_btree_node*) ;
 scalar_t__ grub_nilfs2_btree_node_nchildren_max (struct grub_nilfs2_data*,struct grub_nilfs2_btree_node*) ;

__attribute__((used)) static inline grub_uint64_t *
grub_nilfs2_btree_node_dptrs (struct grub_nilfs2_data *data,
         struct grub_nilfs2_btree_node *node)
{
  return (grub_uint64_t *) (grub_nilfs2_btree_node_dkeys (node) +
       grub_nilfs2_btree_node_nchildren_max (data,
          node));
}
