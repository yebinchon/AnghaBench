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
struct grub_nilfs2_data {int /*<<< orphan*/  disk; } ;
typedef  unsigned int grub_uint64_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;

/* Variables and functions */
 int FUNC0 (struct grub_nilfs2_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct grub_nilfs2_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static inline int
FUNC3 (struct grub_nilfs2_data *data,
				    grub_uint64_t ptr, void *block)
{
  grub_disk_t disk = data->disk;
  unsigned int nilfs2_block_count = (1 << FUNC0 (data));

  return FUNC2 (disk, ptr * nilfs2_block_count, 0,
			 FUNC1 (data), block);
}