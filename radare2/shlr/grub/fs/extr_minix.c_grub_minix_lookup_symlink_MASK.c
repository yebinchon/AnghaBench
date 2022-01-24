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
struct grub_minix_data {scalar_t__ linknest; } ;
typedef  scalar_t__ grub_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_SYMLINK_LOOP ; 
 size_t FUNC0 (struct grub_minix_data*) ; 
 scalar_t__ GRUB_MINIX_MAX_SYMLNK_CNT ; 
 int GRUB_MINIX_ROOT_INODE ; 
 scalar_t__ grub_errno ; 
 scalar_t__ FUNC1 (scalar_t__,char*,...) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct grub_minix_data*,char*) ; 
 scalar_t__ FUNC4 (struct grub_minix_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*) ; 
 scalar_t__ FUNC5 (struct grub_minix_data*,int) ; 

__attribute__((used)) static grub_err_t
FUNC6 (struct grub_minix_data *data, int ino)
{
#ifndef _MSC_VER
  char symlink[FUNC0 (data) + 1];
#else
  char *symlink = grub_malloc(GRUB_MINIX_INODE_SIZE (data) + 1);
#endif
  if (++data->linknest > GRUB_MINIX_MAX_SYMLNK_CNT)
    return FUNC1 (GRUB_ERR_SYMLINK_LOOP, "too deep nesting of symlinks");

  if (FUNC4 (data, 0, 0, 0,
			    FUNC0 (data), symlink) < 0)
    return grub_errno;

  symlink[FUNC0 (data)] = '\0';

  /* The symlink is an absolute path, go back to the root inode.  */
  if (symlink[0] == '/')
    ino = GRUB_MINIX_ROOT_INODE;

  /* Now load in the old inode.  */
  if (FUNC5 (data, ino))
    return grub_errno;

  FUNC3 (data, symlink);
  if (grub_errno)
    FUNC1 (grub_errno, "cannot follow symlink `%s'", symlink);

  return grub_errno;
}