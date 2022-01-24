#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct grub_jfs_leaf_next_dirent {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  blk2; } ;
struct grub_jfs_internal_dirent {TYPE_5__ ex; } ;
struct TYPE_10__ {size_t* sorted; int /*<<< orphan*/  count; } ;
struct TYPE_11__ {TYPE_3__ header; scalar_t__ dirents; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_9__ {TYPE_1__ tree; } ;
struct grub_jfs_inode {TYPE_4__ dir; TYPE_2__ file; int /*<<< orphan*/  mode; } ;
struct TYPE_14__ {int flags; int sindex; int /*<<< orphan*/  count; } ;
struct grub_jfs_diropen {char* sorted; TYPE_7__ header; struct grub_jfs_diropen* dirpage; int /*<<< orphan*/  count; struct grub_jfs_leaf_next_dirent* next_dirent; struct grub_jfs_leaf_next_dirent* next_leaf; scalar_t__ dirent; scalar_t__ leaf; struct grub_jfs_inode* inode; struct grub_jfs_data* data; } ;
struct TYPE_13__ {int /*<<< orphan*/  log2_blksz; int /*<<< orphan*/  blksz; } ;
struct grub_jfs_data {TYPE_6__ sblock; int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int GRUB_DISK_SECTOR_BITS ; 
 int /*<<< orphan*/  GRUB_ERR_BAD_FILE_TYPE ; 
 int GRUB_JFS_FILETYPE_DIR ; 
 int GRUB_JFS_FILETYPE_MASK ; 
 int GRUB_JFS_TREE_LEAF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct grub_jfs_diropen*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct grub_jfs_diropen* FUNC5 (int) ; 
 struct grub_jfs_diropen* FUNC6 (int) ; 

__attribute__((used)) static struct grub_jfs_diropen *
FUNC7 (struct grub_jfs_data *data, struct grub_jfs_inode *inode)
{
  struct grub_jfs_internal_dirent *de;
  struct grub_jfs_diropen *diro;
  int blk;

  de = (struct grub_jfs_internal_dirent *) inode->dir.dirents;

  if (!((FUNC4 (inode->mode)
	 & GRUB_JFS_FILETYPE_MASK) == GRUB_JFS_FILETYPE_DIR))
    {
      FUNC1 (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
      return 0;
    }

  diro = FUNC6 (sizeof (struct grub_jfs_diropen));
  if (!diro)
    return 0;

  diro->data = data;
  diro->inode = inode;

  /* Check if the entire tree is contained within the inode.  */
  if (inode->file.tree.flags & GRUB_JFS_TREE_LEAF)
    {
      diro->leaf = inode->dir.dirents;
      diro->next_leaf = (struct grub_jfs_leaf_next_dirent *) de;
      diro->sorted = (char *) (inode->dir.header.sorted);
      diro->count = inode->dir.header.count;

      return diro;
    }

  diro->dirpage = FUNC5 (FUNC4 (data->sblock.blksz));
  if (!diro->dirpage)
    {
      FUNC2 (diro);
      return 0;
    }

  blk = FUNC4 (de[inode->dir.header.sorted[0]].ex.blk2);
  blk <<= (FUNC3 (data->sblock.log2_blksz) - GRUB_DISK_SECTOR_BITS);

  /* Read in the nodes until we are on the leaf node level.  */
  do
    {
      int index;
      if (FUNC0 (data->disk, blk, 0,
			  FUNC4 (data->sblock.blksz),
			  diro->dirpage->sorted))
	{
	  FUNC2 (diro->dirpage);
	  FUNC2 (diro);
	  return 0;
	}

      de = (struct grub_jfs_internal_dirent *) diro->dirpage->dirent;
      index = diro->dirpage->sorted[diro->dirpage->header.sindex * 32];
      blk = (FUNC4 (de[index].ex.blk2)
	     << (FUNC3 (data->sblock.log2_blksz)
		 - GRUB_DISK_SECTOR_BITS));
    } while (!(diro->dirpage->header.flags & GRUB_JFS_TREE_LEAF));

  diro->leaf = diro->dirpage->dirent;
  diro->next_leaf = diro->dirpage->next_dirent;
  diro->sorted = &diro->dirpage->sorted[diro->dirpage->header.sindex * 32];
  diro->count = diro->dirpage->header.count;

  return diro;
}