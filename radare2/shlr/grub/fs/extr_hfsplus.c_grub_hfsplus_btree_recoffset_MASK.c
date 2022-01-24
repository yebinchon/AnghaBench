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
struct grub_hfsplus_btree {int nodesize; } ;
struct grub_hfsplus_btnode {int dummy; } ;
typedef  int /*<<< orphan*/  grub_uint16_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int
FUNC1 (struct grub_hfsplus_btree *btree,
			   struct grub_hfsplus_btnode *node, int index)
{
  char *cnode = (char *) node;
  grub_uint16_t *recptr;
  recptr = (grub_uint16_t *) (&cnode[btree->nodesize
				     - index * sizeof (grub_uint16_t) - 2]);
  return recptr? FUNC0 (*recptr): 0;
}