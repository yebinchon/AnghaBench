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
typedef  int uint16_t ;
typedef  scalar_t__ i2c_status_t ;

/* Variables and functions */
 scalar_t__ I2C_STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int,int) ; 

i2c_status_t FUNC5(uint8_t devaddr, uint8_t regaddr, uint8_t* data, uint16_t length, uint16_t timeout) {
    i2c_status_t status = FUNC2(devaddr, timeout);
    if (status < 0) {
        goto error;
    }

    status = FUNC4(regaddr, timeout);
    if (status < 0) {
        goto error;
    }

    status = FUNC2(devaddr | 0x01, timeout);

    for (uint16_t i = 0; i < (length - 1) && status >= 0; i++) {
        status = FUNC0(timeout);
        if (status >= 0) {
            data[i] = status;
        }
    }

    if (status >= 0) {
        status = FUNC1(timeout);
        if (status >= 0) {
            data[(length - 1)] = status;
        }
    }

error:
    FUNC3();

    return (status < 0) ? status : I2C_STATUS_SUCCESS;
}