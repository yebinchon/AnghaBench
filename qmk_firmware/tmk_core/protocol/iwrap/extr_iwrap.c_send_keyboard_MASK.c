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
struct TYPE_3__ {int mods; int* keys; } ;
typedef  TYPE_1__ report_keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(report_keyboard_t *report) {
    if (!FUNC3() && !FUNC2()) return;
    FUNC1(0x01, 0x0c);
    // HID raw mode header
    FUNC4(0x9f);
    FUNC4(0x0a);  // Length
    FUNC4(0xa1);  // DATA(Input)
    FUNC4(0x01);  // Report ID
    FUNC4(report->mods);
    FUNC4(0x00);  // reserved byte(always 0)
    FUNC4(report->keys[0]);
    FUNC4(report->keys[1]);
    FUNC4(report->keys[2]);
    FUNC4(report->keys[3]);
    FUNC4(report->keys[4]);
    FUNC4(report->keys[5]);
    FUNC0(0x01);
}