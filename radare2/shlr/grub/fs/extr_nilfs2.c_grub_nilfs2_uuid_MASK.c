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
struct TYPE_4__ {int /*<<< orphan*/ * s_uuid; } ;
struct grub_nilfs2_data {TYPE_1__ sblock; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  int /*<<< orphan*/  grub_disk_t ;
typedef  TYPE_2__* grub_device_t ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC2 (struct grub_nilfs2_data*) ; 
 struct grub_nilfs2_data* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_mod ; 

__attribute__((used)) static grub_err_t
FUNC5 (grub_device_t device, char **uuid)
{
  struct grub_nilfs2_data *data;
  grub_disk_t disk = device->disk;

  FUNC0 (my_mod);

  data = FUNC3 (disk);
  if (data)
    {
      *uuid =
	FUNC4
	("%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%0x-%02x%02x%02x%02x%02x%02x",
	 data->sblock.s_uuid[0], data->sblock.s_uuid[1],
	 data->sblock.s_uuid[2], data->sblock.s_uuid[3],
	 data->sblock.s_uuid[4], data->sblock.s_uuid[5],
	 data->sblock.s_uuid[6], data->sblock.s_uuid[7],
	 data->sblock.s_uuid[8], data->sblock.s_uuid[9],
	 data->sblock.s_uuid[10], data->sblock.s_uuid[11],
	 data->sblock.s_uuid[12], data->sblock.s_uuid[13],
	 data->sblock.s_uuid[14], data->sblock.s_uuid[15]);
    }
  else
    *uuid = NULL;

  FUNC1 (my_mod);

  FUNC2 (data);

  return grub_errno;
}