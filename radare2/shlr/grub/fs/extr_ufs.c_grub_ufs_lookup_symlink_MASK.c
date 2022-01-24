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
struct TYPE_2__ {int /*<<< orphan*/  log2_blksz; } ;
struct grub_ufs_data {scalar_t__ linknest; int /*<<< orphan*/  be; TYPE_1__ sblock; int /*<<< orphan*/  disk; } ;
typedef  scalar_t__ grub_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_SYMLINK_LOOP ; 
 int GRUB_UFS_INODE ; 
 scalar_t__ GRUB_UFS_MAX_SYMLNK_CNT ; 
 scalar_t__ FUNC0 (struct grub_ufs_data*,char*) ; 
 int FUNC1 (struct grub_ufs_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct grub_ufs_data*) ; 
 size_t FUNC3 (struct grub_ufs_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,char*) ; 
 scalar_t__ grub_errno ; 
 scalar_t__ FUNC5 (scalar_t__,char*,...) ; 
 char* FUNC6 (size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct grub_ufs_data*,char*) ; 
 scalar_t__ FUNC10 (struct grub_ufs_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_err_t
FUNC11 (struct grub_ufs_data *data, int ino)
{
#ifndef _MSC_VER
  char symlink[FUNC3 (data)];
#else
  char * symlink = grub_malloc(INODE_SIZE (data));
#endif
  if (++data->linknest > GRUB_UFS_MAX_SYMLNK_CNT)
    return FUNC5 (GRUB_ERR_SYMLINK_LOOP, "too deep nesting of symlinks");

  if (FUNC2 (data) == 0)
    FUNC8 (symlink, (char *) FUNC0 (data, symlink));
  else
    {
      FUNC4 (data->disk,
		      (FUNC1 (data, 0)
		       << FUNC7 (data->sblock.log2_blksz, 
					     data->be)),
		      0, FUNC3 (data), symlink);
      symlink[FUNC3 (data)] = '\0';
    }

  /* The symlink is an absolute path, go back to the root inode.  */
  if (symlink[0] == '/')
    ino = GRUB_UFS_INODE;

  /* Now load in the old inode.  */
  if (FUNC10 (data, ino, 0))
    return grub_errno;

  FUNC9 (data, symlink);
  if (grub_errno)
    FUNC5 (grub_errno, "cannot follow symlink `%s'", symlink);

  return grub_errno;
}