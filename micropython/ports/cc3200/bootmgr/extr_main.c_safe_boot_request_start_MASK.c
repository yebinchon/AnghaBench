#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MICROPY_SAFE_BOOT_PORT ; 
 int /*<<< orphan*/  MICROPY_SAFE_BOOT_PORT_PIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3 (uint32_t wait_time) {
    if (FUNC0(MICROPY_SAFE_BOOT_PORT, MICROPY_SAFE_BOOT_PORT_PIN)) {
        FUNC2(FUNC1(wait_time * 1000));
    }
    return FUNC0(MICROPY_SAFE_BOOT_PORT, MICROPY_SAFE_BOOT_PORT_PIN) ? true : false;
}