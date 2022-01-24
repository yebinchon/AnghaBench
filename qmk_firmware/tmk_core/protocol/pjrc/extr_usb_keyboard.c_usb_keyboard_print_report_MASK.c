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
struct TYPE_3__ {int /*<<< orphan*/  mods; int /*<<< orphan*/ * keys; } ;
typedef  TYPE_1__ report_keyboard_t ;

/* Variables and functions */
 int KEYBOARD_REPORT_KEYS ; 
 int /*<<< orphan*/  debug_keyboard ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(report_keyboard_t *report) {
    if (!debug_keyboard) return;
    FUNC1("keys: ");
    for (int i = 0; i < KEYBOARD_REPORT_KEYS; i++) {
        FUNC0(report->keys[i]);
        FUNC1(" ");
    }
    FUNC1(" mods: ");
    FUNC0(report->mods);
    FUNC1("\n");
}