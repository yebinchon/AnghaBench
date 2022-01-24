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
 scalar_t__ DEVICE_STATE_Configured ; 
 int /*<<< orphan*/  SLAVE_I2C_ADDRESS ; 
 scalar_t__ USB_DeviceState ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void){

    if (USB_DeviceState != DEVICE_STATE_Configured){
        FUNC0(SLAVE_I2C_ADDRESS); //setup address of slave i2c
        FUNC1(); //enable interupts
    }
}