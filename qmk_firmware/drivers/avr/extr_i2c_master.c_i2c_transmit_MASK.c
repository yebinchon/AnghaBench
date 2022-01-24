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
typedef  int uint8_t ;
typedef  size_t uint16_t ;
typedef  scalar_t__ i2c_status_t ;

/* Variables and functions */
 int I2C_WRITE ; 
 scalar_t__ FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int const,size_t) ; 

i2c_status_t FUNC3(uint8_t address, const uint8_t* data, uint16_t length, uint16_t timeout) {
    i2c_status_t status = FUNC0(address | I2C_WRITE, timeout);

    for (uint16_t i = 0; i < length && status >= 0; i++) {
        status = FUNC2(data[i], timeout);
    }

    FUNC1();

    return status;
}