#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct grub_hfsplus_key_internal {int dummy; } ;
struct grub_hfsplus_extkey_internal {scalar_t__ fileid; int start; } ;
struct grub_hfsplus_extkey {int dummy; } ;
struct grub_hfsplus_extent {int dummy; } ;
struct grub_hfsplus_btnode {int dummy; } ;
typedef  TYPE_2__* grub_fshelp_node_t ;
typedef  int grub_disk_addr_t ;
struct TYPE_5__ {scalar_t__ fileid; TYPE_1__* data; struct grub_hfsplus_extent* extents; } ;
struct TYPE_4__ {int embedded_offset; int log2blksize; int /*<<< orphan*/  extoverflow_tree; } ;

/* Variables and functions */
 int GRUB_DISK_SECTOR_BITS ; 
 int /*<<< orphan*/  GRUB_ERR_READ_ERROR ; 
 scalar_t__ GRUB_HFSPLUS_FILEID_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct grub_hfsplus_btnode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct grub_hfsplus_btnode*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct grub_hfsplus_key_internal*,int /*<<< orphan*/ ,struct grub_hfsplus_btnode**,int*) ; 
 int /*<<< orphan*/  grub_hfsplus_cmp_extkey ; 
 int FUNC4 (struct grub_hfsplus_extent*,int*) ; 

__attribute__((used)) static grub_disk_addr_t
FUNC5 (grub_fshelp_node_t node, grub_disk_addr_t fileblock)
{
  struct grub_hfsplus_btnode *nnode = 0;
  int blksleft = fileblock;
  struct grub_hfsplus_extent *extents = &node->extents[0];

  while (1)
    {
      struct grub_hfsplus_extkey *key;
      struct grub_hfsplus_extkey_internal extoverflow;
      int blk, ptr = 0;

      /* Try to find this block in the current set of extents.  */
      blk = FUNC4 (extents, &blksleft);

      /* The previous iteration of this loop allocated memory.  The
	 code above used this memory, it can be freed now.  */
      FUNC1 (nnode);
      nnode = 0;

      if (blk != -1)
	return (blk
		+ (node->data->embedded_offset >> (node->data->log2blksize
						   - GRUB_DISK_SECTOR_BITS)));

      /* For the extent overflow file, extra extents can't be found in
	 the extent overflow file.  If this happens, you found a
	 bug...  */
      if (node->fileid == GRUB_HFSPLUS_FILEID_OVERFLOW)
	{
	  FUNC0 (GRUB_ERR_READ_ERROR,
		      "extra extents found in an extend overflow file");
	  break;
	}

      /* Set up the key to look for in the extent overflow file.  */
      extoverflow.fileid = node->fileid;
      extoverflow.start = fileblock - blksleft;

      if (FUNC3 (&node->data->extoverflow_tree,
				     (struct grub_hfsplus_key_internal *) &extoverflow,
				     grub_hfsplus_cmp_extkey, &nnode, &ptr))
	{
	  FUNC0 (GRUB_ERR_READ_ERROR,
		      "no block found for the file id 0x%x and the block offset 0x%x",
		      node->fileid, fileblock);
	  break;
	}

      /* The extent overflow file has 8 extents right after the key.  */
      key = (struct grub_hfsplus_extkey *)
	FUNC2 (&node->data->extoverflow_tree, nnode, ptr);
      extents = (struct grub_hfsplus_extent *) (key + 1);

      /* The block wasn't found.  Perhaps the next iteration will find
	 it.  The last block we found is stored in BLKSLEFT now.  */
    }

  FUNC1 (nnode);

  /* Too bad, you lose.  */
  return -1;
}