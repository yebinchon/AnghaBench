#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct grub_nilfs2_data {int dummy; } ;
struct grub_nilfs2_btree_node {int bn_flags; } ;
typedef  int /*<<< orphan*/  grub_uint64_t ;

/* Variables and functions */
 int FUNC0 (struct grub_nilfs2_data*) ; 
 int NILFS_BTREE_NODE_EXTRA_PAD_SIZE ; 
 int NILFS_BTREE_NODE_ROOT ; 

__attribute__((used)) static inline int
FUNC1 (struct grub_nilfs2_data *data,
				      struct grub_nilfs2_btree_node *node)
{
  int node_children_max = ((FUNC0 (data) -
			    sizeof (struct grub_nilfs2_btree_node) -
			    NILFS_BTREE_NODE_EXTRA_PAD_SIZE) /
			   (sizeof (grub_uint64_t) + sizeof (grub_uint64_t)));

  return (node->bn_flags & NILFS_BTREE_NODE_ROOT) ? 3 : node_children_max;
}