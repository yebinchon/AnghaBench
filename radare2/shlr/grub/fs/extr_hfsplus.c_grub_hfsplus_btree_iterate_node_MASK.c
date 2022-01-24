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
struct grub_hfsplus_btree {int nodesize; int /*<<< orphan*/  file; } ;
struct grub_hfsplus_btnode {int /*<<< orphan*/  next; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct grub_hfsplus_btree*,struct grub_hfsplus_btnode*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*) ; 

__attribute__((used)) static int
FUNC4 (struct grub_hfsplus_btree *btree,
				 struct grub_hfsplus_btnode *first_node,
				 int first_rec,
				 int (*hook) (void *record, void *closure),
				 void *closure)
{
  int rec;

  if (hook)
  for (;;)
    {
      char *cnode = (char *) first_node;

      if (!first_node) {
        return 0;
      }
      /* Iterate over all records in this node.  */
      for (rec = first_rec; rec < FUNC0 (first_node->count); rec++)
	{
	  if (hook (FUNC2 (btree, first_node, rec), closure))
	    return 1;
	}

      if (! first_node->next)
	break;

      if (FUNC3 (&btree->file, 0, 0, 0,
				  (FUNC1 (first_node->next)
				   * btree->nodesize),
				  btree->nodesize, cnode) <= 0)
	return 1;

      /* Don't skip any record in the next iteration.  */
      first_rec = 0;
    }

  return 0;
}