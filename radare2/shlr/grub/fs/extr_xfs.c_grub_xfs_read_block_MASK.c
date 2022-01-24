#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct grub_xfs_btree_node {scalar_t__* keys; int /*<<< orphan*/  numrecs; scalar_t__ magic; scalar_t__ level; } ;
typedef  int /*<<< orphan*/  grub_xfs_extent ;
typedef  scalar_t__ grub_uint64_t ;
typedef  TYPE_5__* grub_fshelp_node_t ;
typedef  scalar_t__ grub_disk_addr_t ;
struct TYPE_9__ {scalar_t__ log2_bsize; int /*<<< orphan*/  bsize; } ;
struct TYPE_13__ {TYPE_2__ sblock; int /*<<< orphan*/  disk; } ;
struct TYPE_8__ {scalar_t__* keys; int /*<<< orphan*/  numrecs; } ;
struct TYPE_10__ {int /*<<< orphan*/ * extents; TYPE_1__ btree; } ;
struct TYPE_11__ {scalar_t__ format; TYPE_3__ data; int /*<<< orphan*/  nextents; } ;
struct TYPE_12__ {TYPE_7__* data; TYPE_4__ inode; } ;

/* Variables and functions */
 scalar_t__ GRUB_DISK_SECTOR_BITS ; 
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 int /*<<< orphan*/  GRUB_ERR_NOT_IMPLEMENTED_YET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_7__*,scalar_t__) ; 
 scalar_t__ XFS_INODE_FORMAT_BTREE ; 
 scalar_t__ XFS_INODE_FORMAT_EXT ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct grub_xfs_btree_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct grub_xfs_btree_node*) ; 
 struct grub_xfs_btree_node* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 

__attribute__((used)) static grub_disk_addr_t
FUNC12 (grub_fshelp_node_t node, grub_disk_addr_t fileblock)
{
  struct grub_xfs_btree_node *leaf = 0;
  int ex, nrec;
  grub_xfs_extent *exts;
  grub_uint64_t ret = 0;

  if (node->inode.format == XFS_INODE_FORMAT_BTREE)
    {
      grub_uint64_t *keys;

      leaf = FUNC10 (node->data->sblock.bsize);
      if (leaf == 0)
        return 0;

      nrec = FUNC4 (node->inode.data.btree.numrecs);
      keys = &node->inode.data.btree.keys[0];
      do
        {
          int i;

          for (i = 0; i < nrec; i++)
            {
              if (fileblock < FUNC6 (keys[i]))
                break;
            }

          /* Sparse block.  */
          if (i == 0)
            {
              FUNC9 (leaf);
              return 0;
            }

          if (FUNC7 (node->data->disk,
                              FUNC6 (keys[i - 1 + nrec])
                              << (node->data->sblock.log2_bsize
                                  - GRUB_DISK_SECTOR_BITS),
                              0, node->data->sblock.bsize, leaf))
            return 0;

          if (FUNC11 ((char *) leaf->magic, "BMAP", 4))
            {
              FUNC9 (leaf);
              FUNC8 (GRUB_ERR_BAD_FS, "not a correct XFS BMAP node");
              return 0;
            }

          nrec = FUNC4 (leaf->numrecs);
          keys = &leaf->keys[0];
        } while (leaf->level);
      exts = (grub_xfs_extent *) keys;
    }
  else if (node->inode.format == XFS_INODE_FORMAT_EXT)
    {
      nrec = FUNC5 (node->inode.nextents);
      exts = &node->inode.data.extents[0];
    }
  else
    {
      FUNC8 (GRUB_ERR_NOT_IMPLEMENTED_YET,
		  "XFS does not support inode format %d yet",
		  node->inode.format);
      return 0;
    }

  /* Iterate over each extent to figure out which extent has
     the block we are looking for.  */
  for (ex = 0; ex < nrec; ex++)
    {
      grub_uint64_t start = FUNC0 (exts, ex);
      grub_uint64_t offset = FUNC1 (exts, ex);
      grub_uint64_t size = FUNC2 (exts, ex);

      /* Sparse block.  */
      if (fileblock < offset)
        break;
      else if (fileblock < offset + size)
        {
          ret = (fileblock - offset + start);
          break;
        }
    }

  if (leaf)
    FUNC9 (leaf);

  return FUNC3(node->data, ret);
}