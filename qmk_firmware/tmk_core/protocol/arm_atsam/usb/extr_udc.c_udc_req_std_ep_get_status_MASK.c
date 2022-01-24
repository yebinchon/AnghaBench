#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  udc_ep_status ;
typedef  int /*<<< orphan*/  le16_t ;
struct TYPE_3__ {int wLength; int wIndex; } ;
struct TYPE_4__ {TYPE_1__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_EP_STATUS_HALTED ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__ udd_g_ctrlreq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC3(void) {
    static le16_t udc_ep_status;

    if (udd_g_ctrlreq.req.wLength != sizeof(udc_ep_status)) {
        return false;
    }

    udc_ep_status = FUNC1(udd_g_ctrlreq.req.wIndex & 0xFF) ? FUNC0(USB_EP_STATUS_HALTED) : 0;

    FUNC2((uint8_t *)&udc_ep_status, sizeof(udc_ep_status));
    return true;
}