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
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  TYPE_1__* grub_device_t ;
struct TYPE_3__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int GRUB_DISK_SECTOR_SIZE ; 
 int /*<<< orphan*/  REISERFS_LABEL_OFFSET ; 
 int /*<<< orphan*/  REISERFS_MAX_LABEL_LENGTH ; 
 int REISERFS_SUPER_BLOCK_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  grub_errno ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_err_t
FUNC2 (grub_device_t device, char **label)
{
  *label = FUNC1 (REISERFS_MAX_LABEL_LENGTH);
  if (*label)
    {
      FUNC0 (device->disk,
                      REISERFS_SUPER_BLOCK_OFFSET / GRUB_DISK_SECTOR_SIZE,
                      REISERFS_LABEL_OFFSET, REISERFS_MAX_LABEL_LENGTH,
                      *label);
    }
  return grub_errno;
}