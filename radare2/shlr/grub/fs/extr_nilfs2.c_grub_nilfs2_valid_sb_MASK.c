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
struct grub_nilfs2_super_block {int /*<<< orphan*/  s_rev_level; int /*<<< orphan*/  s_magic; } ;

/* Variables and functions */
 scalar_t__ NILFS2_SUPER_MAGIC ; 
 scalar_t__ NILFS_SUPORT_REV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (struct grub_nilfs2_super_block *sbp)
{
  if (FUNC0 (sbp->s_magic) != NILFS2_SUPER_MAGIC)
    return 0;

  if (FUNC1 (sbp->s_rev_level) != NILFS_SUPORT_REV)
    return 0;

  return 1;
}