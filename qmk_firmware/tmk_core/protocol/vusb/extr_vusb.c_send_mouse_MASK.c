#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  report; int /*<<< orphan*/  report_id; } ;
typedef  TYPE_1__ vusb_mouse_report_t ;
typedef  int /*<<< orphan*/  report_mouse_t ;

/* Variables and functions */
 int /*<<< orphan*/  REPORT_ID_MOUSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 

__attribute__((used)) static void FUNC2(report_mouse_t *report) {
    vusb_mouse_report_t r = {.report_id = REPORT_ID_MOUSE, .report = *report};
    if (FUNC0()) {
        FUNC1((void *)&r, sizeof(vusb_mouse_report_t));
    }
}