#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct grub_fshelp_node {int size; int block; int /*<<< orphan*/  parent; int /*<<< orphan*/  data; } ;
struct grub_affs_iterate_dir_closure {int /*<<< orphan*/  hashtable; int /*<<< orphan*/  closure; scalar_t__ (* hook ) (char const*,int,struct grub_fshelp_node*,int /*<<< orphan*/ ) ;TYPE_1__* file; int /*<<< orphan*/  data; struct grub_fshelp_node* node; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct grub_fshelp_node* FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*,int,struct grub_fshelp_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (const char *name, int block,
		       int size, int type,
		       struct grub_affs_iterate_dir_closure *c)
{
  struct grub_fshelp_node *node;

  node = FUNC2 (sizeof (*node));
  c->node = node;
  if (!node)
    {
      FUNC1 (c->hashtable);
      return 1;
    }

  node->data = c->data;
  node->size = size;
  node->block = block;
  node->parent = FUNC0 (c->file->parent);

  if (c->hook (name, type, node, c->closure))
    {
      FUNC1 (c->hashtable);
      return 1;
    }
  return 0;
}