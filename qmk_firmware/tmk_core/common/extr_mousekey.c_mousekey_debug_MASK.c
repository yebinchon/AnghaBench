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
struct TYPE_2__ {int /*<<< orphan*/  h; int /*<<< orphan*/  v; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  buttons; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug_mouse ; 
 TYPE_1__ mouse_report ; 
 int /*<<< orphan*/  mousekey_accel ; 
 int /*<<< orphan*/  mousekey_repeat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void) {
    if (!debug_mouse) return;
    FUNC1("mousekey [btn|x y v h](rep/acl): [");
    FUNC0(mouse_report.buttons);
    FUNC1("|");
    FUNC3(mouse_report.x);
    FUNC1(" ");
    FUNC3(mouse_report.y);
    FUNC1(" ");
    FUNC3(mouse_report.v);
    FUNC1(" ");
    FUNC3(mouse_report.h);
    FUNC1("](");
    FUNC2(mousekey_repeat);
    FUNC1("/");
    FUNC2(mousekey_accel);
    FUNC1(")\n");
}