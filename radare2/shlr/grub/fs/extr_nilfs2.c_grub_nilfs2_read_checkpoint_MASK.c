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
struct TYPE_2__ {int /*<<< orphan*/  sr_cpfile; } ;
struct grub_nilfs2_data {TYPE_1__ sroot; int /*<<< orphan*/  disk; } ;
struct grub_nilfs2_checkpoint {int dummy; } ;
typedef  unsigned int grub_uint64_t ;
typedef  int grub_uint32_t ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FS ; 
 int FUNC0 (struct grub_nilfs2_data*) ; 
 int FUNC1 (struct grub_nilfs2_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int,int,struct grub_nilfs2_checkpoint*) ; 
 unsigned int FUNC3 (unsigned int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC5 (struct grub_nilfs2_data*,int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static grub_err_t
FUNC6 (struct grub_nilfs2_data *data,
			     grub_uint64_t cpno,
			     struct grub_nilfs2_checkpoint *cpp)
{
  grub_uint64_t blockno;
  grub_uint32_t offset;
  grub_uint64_t pptr;
  grub_disk_t disk = data->disk;
  unsigned int nilfs2_block_count = (1 << FUNC0 (data));

  /* Assume sizeof(struct grub_nilfs2_cpfile_header) <
     sizeof(struct grub_nilfs2_checkpoint).
   */
  blockno = FUNC3 (cpno, FUNC1 (data) /
			   sizeof (struct grub_nilfs2_checkpoint), &offset);

  pptr = FUNC5 (data, &data->sroot.sr_cpfile, blockno, 1);
  if (pptr == (grub_uint64_t) - 1)
    {
      return FUNC4 (GRUB_ERR_BAD_FS, "btree lookup failure");
    }

  return FUNC2 (disk, pptr * nilfs2_block_count,
			 offset * sizeof (struct grub_nilfs2_checkpoint),
			 sizeof (struct grub_nilfs2_checkpoint), cpp);
}