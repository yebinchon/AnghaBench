
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_btree_node {int dummy; } ;
typedef int grub_uint64_t ;


 int grub_le_to_cpu64 (int ) ;
 int * grub_nilfs2_btree_node_dkeys (struct grub_nilfs2_btree_node*) ;

__attribute__((used)) static inline grub_uint64_t
grub_nilfs2_btree_node_get_key (struct grub_nilfs2_btree_node *node,
    int index)
{
  return grub_le_to_cpu64 (*(grub_nilfs2_btree_node_dkeys (node) + index));
}
