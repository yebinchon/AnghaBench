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
typedef  int uint8_t ;
struct TYPE_2__ {int count; int* codes; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNICODE_TYPE_DELAY ; 
 TYPE_1__ qk_ucis_state ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((weak)) void FUNC3(void) {
    for (uint8_t i = 0; i < qk_ucis_state.count - 1; i++) {
        uint8_t code = qk_ucis_state.codes[i];
        FUNC0(code);
        FUNC1(code);
        FUNC2(UNICODE_TYPE_DELAY);
    }
}