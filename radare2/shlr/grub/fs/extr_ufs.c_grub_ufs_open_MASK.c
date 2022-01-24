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
struct grub_ufs_data {int dummy; } ;
struct grub_file {int /*<<< orphan*/  size; struct grub_ufs_data* data; TYPE_1__* device; } ;
typedef  scalar_t__ grub_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_FILENAME ; 
 scalar_t__ GRUB_ERR_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct grub_ufs_data*) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct grub_ufs_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct grub_ufs_data*,char const*) ; 
 struct grub_ufs_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct grub_ufs_data*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_err_t
FUNC6 (struct grub_file *file, const char *name)
{
  struct grub_ufs_data *data;
  data = FUNC4 (file->device->disk);
  if (!data)
    return grub_errno;

  FUNC5 (data, 2, 0);
  if (grub_errno)
    {
      FUNC2 (data);
      return grub_errno;
    }

  if (!name || name[0] != '/')
    {
      FUNC1 (GRUB_ERR_BAD_FILENAME, "bad filename");
      return grub_errno;
    }

  FUNC3 (data, name);
  if (grub_errno)
    {
      FUNC2 (data);
      return grub_errno;
    }

  file->data = data;
  file->size = FUNC0 (data);

  return GRUB_ERR_NONE;
}