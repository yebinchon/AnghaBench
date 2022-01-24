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
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  mode; } ;
struct grub_jfs_data {TYPE_2__ currinode; } ;
struct grub_file {int /*<<< orphan*/  size; struct grub_jfs_data* data; TYPE_1__* device; } ;
typedef  scalar_t__ grub_err_t ;
struct TYPE_3__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FILE_TYPE ; 
 int GRUB_JFS_FILETYPE_MASK ; 
 int GRUB_JFS_FILETYPE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct grub_jfs_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct grub_jfs_data*,char const*) ; 
 struct grub_jfs_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC8 (struct grub_file *file, const char *name)
{
  struct grub_jfs_data *data;

  FUNC0 (my_mod);

  data = FUNC5 (file->device->disk);
  if (!data)
    goto fail;

  FUNC4 (data, name);
  if (grub_errno)
    goto fail;

  /* It is only possible for open regular files.  */
  if (! ((FUNC6 (data->currinode.mode)
	  & GRUB_JFS_FILETYPE_MASK) == GRUB_JFS_FILETYPE_REG))
    {
      FUNC2 (GRUB_ERR_BAD_FILE_TYPE, "not a regular file");
      goto fail;
    }

  file->data = data;
  file->size = FUNC7 (data->currinode.size);

  return 0;

 fail:

  FUNC1 (my_mod);

  FUNC3 (data);

  return grub_errno;
}