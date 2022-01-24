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
struct TYPE_3__ {scalar_t__ wValue; int wIndex; scalar_t__ wLength; } ;
struct TYPE_4__ {TYPE_1__ req; } ;

/* Variables and functions */
 scalar_t__ USB_EP_FEATURE_HALT ; 
 int FUNC0 (int) ; 
 TYPE_2__ udd_g_ctrlreq ; 

__attribute__((used)) static bool FUNC1(void) {
    if (udd_g_ctrlreq.req.wLength) {
        return false;
    }

    if (udd_g_ctrlreq.req.wValue == USB_EP_FEATURE_HALT) {
        return FUNC0(udd_g_ctrlreq.req.wIndex & 0xFF);
    }
    return false;
}