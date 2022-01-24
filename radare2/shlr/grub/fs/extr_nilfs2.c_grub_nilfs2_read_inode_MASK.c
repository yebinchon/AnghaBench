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
struct grub_nilfs2_data {int /*<<< orphan*/  ifile; int /*<<< orphan*/  disk; } ;
typedef  int grub_uint64_t ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 int FUNC0 (struct grub_nilfs2_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct grub_nilfs2_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned int,int,struct grub_nilfs2_inode*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct grub_nilfs2_data*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (struct grub_nilfs2_data*,int,int) ; 

__attribute__((used)) static grub_err_t
FUNC7 (struct grub_nilfs2_data *data,
			grub_uint64_t ino, struct grub_nilfs2_inode *inodep)
{
  grub_uint64_t blockno;
  unsigned int offset;
  grub_uint64_t pptr;
  grub_disk_t disk = data->disk;
  unsigned int nilfs2_block_count = (1 << FUNC0 (data));

  blockno = FUNC6 (data, ino,
					     sizeof (struct
						     grub_nilfs2_inode));

  FUNC3 (sizeof (struct grub_nilfs2_inode) * ino,
		 FUNC1 (data), &offset);
  pptr = FUNC5 (data, &data->ifile, blockno, 1);
  if (pptr == (grub_uint64_t) - 1)
    {
      return FUNC4 (GRUB_ERR_BAD_FS, "btree lookup failure");
    }

  return FUNC2 (disk, pptr * nilfs2_block_count, offset,
			 sizeof (struct grub_nilfs2_inode), inodep);
}