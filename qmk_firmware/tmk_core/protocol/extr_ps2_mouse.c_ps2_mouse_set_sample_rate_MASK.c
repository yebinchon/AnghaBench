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
typedef  int /*<<< orphan*/  ps2_mouse_sample_rate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PS2_MOUSE_SET_SAMPLE_RATE ; 

void FUNC1(ps2_mouse_sample_rate_t sample_rate) { FUNC0(PS2_MOUSE_SET_SAMPLE_RATE, sample_rate, "ps2 mouse set sample rate"); }