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

/* Variables and functions */
 int PS2_MOUSE_GET_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PS2_MOUSE_SET_SAMPLE_RATE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(void) {
    FUNC0(PS2_MOUSE_SET_SAMPLE_RATE, "Initiaing scroll wheel enable: Set sample rate");
    FUNC0(200, "200");
    FUNC0(PS2_MOUSE_SET_SAMPLE_RATE, "Set sample rate");
    FUNC0(100, "100");
    FUNC0(PS2_MOUSE_SET_SAMPLE_RATE, "Set sample rate");
    FUNC0(80, "80");
    FUNC0(PS2_MOUSE_GET_DEVICE_ID, "Finished enabling scroll wheel");
    FUNC1(20);
}