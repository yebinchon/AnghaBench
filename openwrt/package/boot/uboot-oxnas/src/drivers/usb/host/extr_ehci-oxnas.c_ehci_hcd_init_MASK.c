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
typedef  scalar_t__ uint32_t ;
struct ehci_hcor {int dummy; } ;
struct ehci_hccr {int /*<<< orphan*/  cr_capbase; } ;
typedef  enum usb_init_type { ____Placeholder_usb_init_type } usb_init_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_HOST_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ehci_hcor* ghcor ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(int index, enum usb_init_type init, struct ehci_hccr **hccr,
		  struct ehci_hcor **hcor)
{
	FUNC2();
	*hccr = (struct ehci_hccr *)(USB_HOST_BASE + 0x100);
	*hcor = (struct ehci_hcor *)((uint32_t)*hccr +
			FUNC0(FUNC1(&(*hccr)->cr_capbase)));
	ghcor = *hcor;
	return 0;
}