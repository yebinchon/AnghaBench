#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  h; int /*<<< orphan*/  v; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  buttons; } ;
typedef  TYPE_1__ report_mouse_t ;

/* Variables and functions */
 int /*<<< orphan*/  debug_mouse ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const report_mouse_t *report) {
    if (!debug_mouse) return;

    FUNC0("serial_mouse usb: [%02X|%d %d %d %d]\n", report->buttons, report->x, report->y, report->v, report->h);
}