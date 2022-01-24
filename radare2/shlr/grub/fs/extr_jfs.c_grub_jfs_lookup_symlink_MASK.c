#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ path; } ;
struct TYPE_4__ {TYPE_1__ symlink; int /*<<< orphan*/  size; } ;
struct grub_jfs_data {scalar_t__ linknest; TYPE_2__ currinode; } ;
typedef  scalar_t__ grub_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_SYMLINK_LOOP ; 
 scalar_t__ GRUB_JFS_MAX_SYMLNK_CNT ; 
 scalar_t__ grub_errno ; 
 scalar_t__ FUNC0 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct grub_jfs_data*,char*) ; 
 scalar_t__ FUNC2 (struct grub_jfs_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC3 (struct grub_jfs_data*,int,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static grub_err_t
FUNC7 (struct grub_jfs_data *data, int ino)
{
  int size = FUNC4 (data->currinode.size);
#ifndef _MSC_VER
  char symlink[size + 1];
#else
  char *symlink = grub_malloc(size + 1);
#endif
  if (++data->linknest > GRUB_JFS_MAX_SYMLNK_CNT)
    return FUNC0 (GRUB_ERR_SYMLINK_LOOP, "too deep nesting of symlinks");

  if (size <= 128)
    FUNC6 (symlink, (char *) (data->currinode.symlink.path), 128);
  else if (FUNC2 (data, 0, 0, 0, size, symlink) < 0)
    return grub_errno;

  symlink[size] = '\0';

  /* The symlink is an absolute path, go back to the root inode.  */
  if (symlink[0] == '/')
    ino = 2;

  /* Now load in the old inode.  */
  if (FUNC3 (data, ino, &data->currinode))
    return grub_errno;

  FUNC1 (data, symlink);
  if (grub_errno)
    FUNC0 (grub_errno, "cannot follow symlink `%s'", symlink);

  return grub_errno;
}