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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  LED_TYPE ;

/* Variables and functions */
 int RGB_CLK_PIN ; 
 int RGB_DI_PIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void inline FUNC2(LED_TYPE *ledarray, uint16_t leds) { FUNC1(ledarray, leds, FUNC0(RGB_DI_PIN & 0xF), FUNC0(RGB_CLK_PIN & 0xF)); }