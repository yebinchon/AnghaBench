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
struct usbip_usb_device {char* path; char* busid; int /*<<< orphan*/  speed; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; } ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bNumConfigurations ; 
 int /*<<< orphan*/  bNumInterfaces ; 
 int /*<<< orphan*/  bcdDevice ; 
 int /*<<< orphan*/  busnum ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  devnum ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct usbip_usb_device *udev)
{
	char buff[100];

	FUNC1("%-20s = %s", "path",  udev->path);
	FUNC1("%-20s = %s", "busid", udev->busid);

	FUNC2(buff, sizeof(buff),
			udev->bDeviceClass,
			udev->bDeviceSubClass,
			udev->bDeviceProtocol);
	FUNC1("%-20s = %s", "Device(C/SC/P)", buff);

	FUNC0(bcdDevice);

	FUNC3(buff, sizeof(buff),
			udev->idVendor,
			udev->idProduct);
	FUNC1("%-20s = %s", "Vendor/Product", buff);

	FUNC0(bNumConfigurations);
	FUNC0(bNumInterfaces);

	FUNC1("%-20s = %s", "speed",
			FUNC4(udev->speed));

	FUNC0(busnum);
	FUNC0(devnum);
}