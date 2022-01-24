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
struct grub_btrfs_data {TYPE_1__ sblock; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  TYPE_2__* grub_device_t ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct grub_btrfs_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (struct grub_btrfs_data*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_err_t
FUNC4 (grub_device_t device, char **uuid)
{
  struct grub_btrfs_data *data;

  *uuid = NULL;

  data = FUNC1 (device->disk);
  if (! data)
    return grub_errno;

  *uuid = FUNC3 ("%04x%04x-%04x-%04x-%04x-%04x%04x%04x",
			  FUNC0 (data->sblock.uuid[0]),
			  FUNC0 (data->sblock.uuid[1]),
			  FUNC0 (data->sblock.uuid[2]),
			  FUNC0 (data->sblock.uuid[3]),
			  FUNC0 (data->sblock.uuid[4]),
			  FUNC0 (data->sblock.uuid[5]),
			  FUNC0 (data->sblock.uuid[6]),
			  FUNC0 (data->sblock.uuid[7]));

  FUNC2 (data);

  return grub_errno;
}