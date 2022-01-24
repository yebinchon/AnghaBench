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
struct usbip_usb_interface {int /*<<< orphan*/  bInterfaceProtocol; int /*<<< orphan*/  bInterfaceSubClass; int /*<<< orphan*/  bInterfaceClass; } ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct usbip_usb_interface *uinf)
{
	char buff[100];

	FUNC1(buff, sizeof(buff),
			uinf->bInterfaceClass,
			uinf->bInterfaceSubClass,
			uinf->bInterfaceProtocol);
	FUNC0("%-20s = %s", "Interface(C/SC/P)", buff);
}