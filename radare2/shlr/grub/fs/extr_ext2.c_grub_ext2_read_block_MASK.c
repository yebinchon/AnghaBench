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
struct grub_ext4_extent_header {int /*<<< orphan*/  entries; } ;
struct grub_ext4_extent {char block; char start; int /*<<< orphan*/  start_hi; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {char* dir_blocks; char indir_block; char double_indir_block; } ;
struct grub_ext2_inode {char flags; TYPE_1__ blocks; } ;
struct grub_ext2_data {int /*<<< orphan*/  disk; } ;
typedef  char grub_uint32_t ;
typedef  TYPE_2__* grub_fshelp_node_t ;
typedef  int grub_disk_addr_t ;
struct TYPE_5__ {struct grub_ext2_inode inode; struct grub_ext2_data* data; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct grub_ext2_data*) ; 
 int EXT4_EXTENTS_FLAG ; 
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 int /*<<< orphan*/  GRUB_ERR_NOT_IMPLEMENTED_YET ; 
 int INDIRECT_BLOCKS ; 
 int FUNC1 (struct grub_ext2_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,char*) ; 
 int grub_errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct grub_ext4_extent_header* FUNC4 (struct grub_ext2_data*,char*,struct grub_ext4_extent_header*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char) ; 
 char* FUNC8 (unsigned int) ; 

__attribute__((used)) static grub_disk_addr_t
FUNC9 (grub_fshelp_node_t node, grub_disk_addr_t fileblock)
{
  struct grub_ext2_data *data = node->data;
  struct grub_ext2_inode *inode = &node->inode;
  int blknr = -1;
  unsigned int blksz = FUNC0 (data);
  int log2_blksz = FUNC1 (data);

  if (FUNC7(inode->flags) & EXT4_EXTENTS_FLAG)
    {
	  char * buf = FUNC8 (FUNC0 (data));
          if (!buf) {
              return -1;
          }
      struct grub_ext4_extent_header *leaf;
      struct grub_ext4_extent *ext;
      int i;

      leaf = FUNC4 (data, buf,
		  (struct grub_ext4_extent_header *) inode->blocks.dir_blocks,
		  fileblock);
      if (! leaf)
        {
          FUNC3 (GRUB_ERR_BAD_FS, "invalid extent");
	  FUNC5 (buf);
          return -1;
        }

      ext = (struct grub_ext4_extent *) (leaf + 1);
      for (i = 0; i < FUNC6 (leaf->entries); i++)
        {
          if (fileblock < FUNC7 (ext[i].block))
            break;
        }

      if (--i >= 0)
        {
          fileblock -= FUNC7 (ext[i].block);
          if (fileblock >= FUNC6 (ext[i].len)) {
  	    FUNC5 (buf);
            return 0;
          } else
            {
              grub_disk_addr_t start;

              start = FUNC6 (ext[i].start_hi);
              start = (start << 32) + FUNC7 (ext[i].start);
              FUNC5 (buf);

              return fileblock + start;
            }
        }
      else
        {
          FUNC3 (GRUB_ERR_BAD_FS, "something wrong with extent");
          FUNC5 (buf);
          return -1;
        }
    }
  /* Direct blocks.  */
  if (fileblock < INDIRECT_BLOCKS) {
    blknr = FUNC7 (inode->blocks.dir_blocks[fileblock]);
  /* Indirect.  */
  } else if (fileblock < INDIRECT_BLOCKS + blksz / 4)
    {
      grub_uint32_t *indir;

      indir = FUNC8 (blksz);
      if (! indir) {
	return grub_errno;
}

      if (FUNC2 (data->disk,
			  ((grub_disk_addr_t)
			   FUNC7 (inode->blocks.indir_block))
			  << log2_blksz,
			  0, blksz, indir)) {
	return grub_errno;
}

      blknr = FUNC7 (indir[fileblock - INDIRECT_BLOCKS]);
      FUNC5 (indir);
    }
  /* Double indirect.  */
  else if (fileblock < (grub_disk_addr_t)(INDIRECT_BLOCKS + blksz / 4) \
		  * (grub_disk_addr_t)(blksz / 4 + 1))
    {
      unsigned int perblock = blksz / 4;
      unsigned int rblock = fileblock - (INDIRECT_BLOCKS
					 + blksz / 4);
      grub_uint32_t *indir;

      indir = FUNC8 (blksz);
      if (! indir) {
	return grub_errno;
}

      if (FUNC2 (data->disk,
			  ((grub_disk_addr_t)
			   FUNC7 (inode->blocks.double_indir_block))
			  << log2_blksz,
			  0, blksz, indir)) {
	return grub_errno;
}

      if (FUNC2 (data->disk,
			  ((grub_disk_addr_t)
			   FUNC7 (indir[rblock / perblock]))
			  << log2_blksz,
			  0, blksz, indir)) {
	return grub_errno;
}

      blknr = FUNC7 (indir[rblock % perblock]);
      FUNC5 (indir);
    }
  /* triple indirect.  */
  else
    {
      FUNC3 (GRUB_ERR_NOT_IMPLEMENTED_YET,
		  "ext2fs doesn't support triple indirect blocks");
    }

  return blknr;
}