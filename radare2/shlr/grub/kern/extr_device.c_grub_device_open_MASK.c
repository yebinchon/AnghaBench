#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ grub_disk_t ;
typedef  TYPE_1__* grub_device_t ;
struct TYPE_5__ {scalar_t__ net; scalar_t__ disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 

grub_device_t
FUNC6 (const char *name)
{
  grub_disk_t disk = 0;
  grub_device_t dev = 0;

  if (! name)
    {
      name = FUNC2 ("root");
      if (*name == '\0')
	{
	  FUNC3 (GRUB_ERR_BAD_DEVICE, "no device is set");
	  goto fail;
	}
    }

  dev = FUNC5 (sizeof (*dev));
  if (! dev)
    goto fail;

  /* Try to open a disk.  */
  disk = FUNC1 (name);
  if (! disk)
    goto fail;

  dev->disk = disk;
  dev->net = 0;	/* FIXME */

  return dev;

 fail:
  if (disk)
    FUNC0 (disk);

  FUNC4 (dev);

  return 0;
}