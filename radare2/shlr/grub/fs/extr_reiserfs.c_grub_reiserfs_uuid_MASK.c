#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * uuid; } ;
struct grub_reiserfs_data {TYPE_1__ superblock; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  TYPE_2__* grub_device_t ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC3 (struct grub_reiserfs_data*) ; 
 struct grub_reiserfs_data* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC6 (grub_device_t device, char **uuid)
{
  struct grub_reiserfs_data *data;
  grub_disk_t disk = device->disk;

  FUNC1 (my_mod);

  data = FUNC4 (disk);
  if (data)
    {
      *uuid = FUNC5 ("%04x%04x-%04x-%04x-%04x-%04x%04x%04x",
			     FUNC0 (data->superblock.uuid[0]),
			     FUNC0 (data->superblock.uuid[1]),
			     FUNC0 (data->superblock.uuid[2]),
			     FUNC0 (data->superblock.uuid[3]),
			     FUNC0 (data->superblock.uuid[4]),
			     FUNC0 (data->superblock.uuid[5]),
			     FUNC0 (data->superblock.uuid[6]),
			     FUNC0 (data->superblock.uuid[7]));
    }
  else
    *uuid = NULL;

  FUNC2 (my_mod);

  FUNC3 (data);

  return grub_errno;
}