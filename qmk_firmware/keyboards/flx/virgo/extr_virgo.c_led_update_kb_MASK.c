#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  scroll_lock; int /*<<< orphan*/  caps_lock; } ;
typedef  TYPE_1__ led_t ;

/* Variables and functions */
 int /*<<< orphan*/  B2 ; 
 int /*<<< orphan*/  E6 ; 
 scalar_t__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

bool FUNC2(led_t led_state) {
    if(FUNC0(led_state)) {
        FUNC1(E6, !led_state.caps_lock);
        FUNC1(B2, !led_state.scroll_lock);
    }
    return true;
}