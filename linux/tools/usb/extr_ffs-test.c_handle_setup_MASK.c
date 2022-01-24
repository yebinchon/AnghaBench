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
struct usb_ctrlrequest {int bRequestType; int bRequest; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(const struct usb_ctrlrequest *setup)
{
	FUNC1("bRequestType = %d\n", setup->bRequestType);
	FUNC1("bRequest     = %d\n", setup->bRequest);
	FUNC1("wValue       = %d\n", FUNC0(setup->wValue));
	FUNC1("wIndex       = %d\n", FUNC0(setup->wIndex));
	FUNC1("wLength      = %d\n", FUNC0(setup->wLength));
}