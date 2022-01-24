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
struct grub_nilfs2_inode {int dummy; } ;
struct grub_nilfs2_data {int dummy; } ;
struct grub_nilfs2_btree_node {int bn_level; } ;
typedef  int grub_uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 int FUNC0 (struct grub_nilfs2_data*) ; 
 int NILFS_BTREE_LEVEL_NODE_MIN ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned char* FUNC2 (int) ; 
 int FUNC3 (struct grub_nilfs2_btree_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_nilfs2_data*,int,unsigned char*) ; 
 struct grub_nilfs2_btree_node* FUNC5 (struct grub_nilfs2_inode*) ; 
 int FUNC6 (struct grub_nilfs2_data*,struct grub_nilfs2_btree_node*,int) ; 
 int FUNC7 (struct grub_nilfs2_btree_node*,int,int*) ; 
 int FUNC8 (struct grub_nilfs2_data*,struct grub_nilfs2_btree_node*) ; 
 int FUNC9 (struct grub_nilfs2_data*,int) ; 

__attribute__((used)) static grub_uint64_t
FUNC10 (struct grub_nilfs2_data *data,
			  struct grub_nilfs2_inode *inode,
			  grub_uint64_t key, int need_translate)
{
  struct grub_nilfs2_btree_node *node;
#ifndef _MSC_VER
  unsigned char block[FUNC0 (data)];
#else
  unsigned char * block = grub_malloc(NILFS2_BLOCK_SIZE (data));
#endif
  grub_uint64_t ptr;
  int level, found, index;

  node = FUNC5 (inode);
  level = FUNC3 (node);

  found = FUNC7 (node, key, &index);
  ptr = FUNC6 (data, node, index);
  if (need_translate)
    ptr = FUNC9 (data, ptr);

  for (level--; level >= NILFS_BTREE_LEVEL_NODE_MIN; level--)
    {
      FUNC4 (data, ptr, block);
      if (grub_errno)
	{
	  return -1;
	}
      node = (struct grub_nilfs2_btree_node *) block;

      if (node->bn_level != level)
	{
	  FUNC1 (GRUB_ERR_BAD_FS, "btree level mismatch\n");
	  return -1;
	}

      if (!found)
	found = FUNC7 (node, key, &index);
      else
	index = 0;

      if (index < FUNC8 (data, node))
	{
	  ptr = FUNC6 (data, node, index);
	  if (need_translate)
	    ptr = FUNC9 (data, ptr);
	}
      else
	{
	  FUNC1 (GRUB_ERR_BAD_FS, "btree corruption\n");
	  return -1;
	}
    }

  if (!found)
    return -1;

  return ptr;
}