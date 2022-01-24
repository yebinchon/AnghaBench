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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ i2c_status_t ;
typedef  int /*<<< orphan*/  conf ;

/* Variables and functions */
 scalar_t__ CMD_OUTPUT_0 ; 
 scalar_t__ CMD_OUTPUT_1 ; 
 scalar_t__ I2C_STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  TIMEOUT ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(uint8_t slave_addr, uint8_t port, uint8_t conf) {
    uint8_t addr = FUNC0(slave_addr);
    uint8_t cmd  = port ? CMD_OUTPUT_1 : CMD_OUTPUT_0;

    i2c_status_t ret = FUNC1(addr, cmd, &conf, sizeof(conf), TIMEOUT);
    if (ret != I2C_STATUS_SUCCESS) {
        FUNC2("pca9555_set_output::FAILED\n");
    }
}