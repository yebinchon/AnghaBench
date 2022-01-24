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
struct TYPE_3__ {int buttons; int x; int y; int v; int h; } ;
typedef  TYPE_1__ report_mouse_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(report_mouse_t *report) {
#ifdef BLUEFRUIT_TRACE_SERIAL
    bluefruit_trace_header();
#endif
    FUNC0(0xFD);
    FUNC0(0x00);
    FUNC0(0x03);
    FUNC0(report->buttons);
    FUNC0(report->x);
    FUNC0(report->y);
    FUNC0(report->v);  // should try sending the wheel v here
    FUNC0(report->h);  // should try sending the wheel h here
    FUNC0(0x00);
#ifdef BLUEFRUIT_TRACE_SERIAL
    bluefruit_trace_footer();
#endif
}