#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct grub_fs {int dummy; } ;
struct grub_file {struct grub_fs* fs; TYPE_2__* device; } ;
struct grub_disk {int dummy; } ;
struct grub_device {int dummy; } ;
typedef  TYPE_3__* grub_disk_dev_t ;
struct TYPE_9__ {struct grub_file* file; } ;
struct TYPE_8__ {int /*<<< orphan*/  read; } ;
struct TYPE_7__ {TYPE_1__* disk; } ;
struct TYPE_6__ {void* data; TYPE_3__* dev; } ;
typedef  TYPE_4__ GrubFS ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  read_foo ; 

GrubFS *FUNC1 (struct grub_fs *myfs, void *data) {
	struct grub_file *file;
	GrubFS *gfs = FUNC0 (sizeof (GrubFS));
	// hacky mallocs :D
	gfs->file = file = FUNC0 (sizeof (struct grub_file));
	file->device = FUNC0 (sizeof (struct grub_device)+1024);
	file->device->disk = FUNC0 (sizeof (struct grub_disk));
	file->device->disk->dev = (grub_disk_dev_t)file->device; // hack!
	file->device->disk->dev->read = read_foo; // grub_disk_dev
	file->device->disk->data = data;
	//file->device->disk->read_hook = read_foo; //read_hook;
	file->fs = myfs;
	return gfs;
}