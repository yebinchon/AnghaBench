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
struct TYPE_2__ {int /*<<< orphan*/  raw; scalar_t__ enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ haptic_config ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

void FUNC2(void) {
    haptic_config.enable = 0;
    FUNC1("haptic_config.enable = %u\n", haptic_config.enable);
    FUNC0(haptic_config.raw);
}