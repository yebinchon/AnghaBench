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
struct TYPE_2__ {int /*<<< orphan*/  raw; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_MATRIX_MAXIMUM_BRIGHTNESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ led_matrix_config ; 

void FUNC2(void) {
    led_matrix_config.val = FUNC1(led_matrix_config.val, 8, 0, LED_MATRIX_MAXIMUM_BRIGHTNESS);
    FUNC0(led_matrix_config.raw);
}