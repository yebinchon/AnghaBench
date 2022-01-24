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
struct TYPE_2__ {int /*<<< orphan*/  first_data_block; } ;
struct grub_ext2_data {TYPE_1__ sblock; int /*<<< orphan*/  disk; } ;
struct grub_ext2_block_group {int dummy; } ;
typedef  int /*<<< orphan*/  grub_err_t ;

/* Variables and functions */
 int FUNC0 (struct grub_ext2_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,struct grub_ext2_block_group*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) inline static grub_err_t
FUNC3 (struct grub_ext2_data *data, int group,
		      struct grub_ext2_block_group *blkgrp)
{
  return FUNC1 (data->disk,
                         ((FUNC2 (data->sblock.first_data_block) + 1)
                          << FUNC0 (data)),
			 group * sizeof (struct grub_ext2_block_group),
			 sizeof (struct grub_ext2_block_group), blkgrp);
}