#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct grub_btrfs_data {int dummy; } ;
typedef  scalar_t__ grub_err_t ;
typedef  TYPE_1__* grub_device_t ;
struct TYPE_3__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 scalar_t__ GRUB_ERR_NONE ; 
 struct grub_btrfs_data* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ grub_errno ; 
 int /*<<< orphan*/  FUNC1 (struct grub_btrfs_data*) ; 

__attribute__((used)) static grub_err_t
FUNC2 (grub_device_t device,
                const char *path ,
                int (*hook) (const char *filename,
                             const struct grub_dirhook_info *info))
{
  struct grub_btrfs_data *data = FUNC0 (device->disk);
  if (grub_errno)
    return grub_errno;
// TODO: no hook here? wtf?
  FUNC1 (data);

  return GRUB_ERR_NONE;
}