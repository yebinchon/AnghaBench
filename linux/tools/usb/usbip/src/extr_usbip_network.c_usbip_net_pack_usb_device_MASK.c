#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usbip_usb_device {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; int /*<<< orphan*/  speed; int /*<<< orphan*/  devnum; int /*<<< orphan*/  busnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(int pack, struct usbip_usb_device *udev)
{
	FUNC1(pack, &udev->busnum);
	FUNC1(pack, &udev->devnum);
	FUNC1(pack, &udev->speed);

	FUNC0(pack, &udev->idVendor);
	FUNC0(pack, &udev->idProduct);
	FUNC0(pack, &udev->bcdDevice);
}