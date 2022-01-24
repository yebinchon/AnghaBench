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
 int /*<<< orphan*/  I2C_ACK ; 
 int /*<<< orphan*/  I2C_NACK ; 
 scalar_t__ I2C_READ ; 
 scalar_t__ I2C_WRITE ; 
 int ROWS_PER_HAND ; 
 scalar_t__ SLAVE_I2C_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ isLeftHand ; 
 int /*<<< orphan*/ * matrix ; 

int FUNC5(void) {
    int slaveOffset = (isLeftHand) ? (ROWS_PER_HAND) : 0;

    int err = FUNC1(SLAVE_I2C_ADDRESS + I2C_WRITE);
    if (err) goto i2c_error;

    // start of matrix stored at 0x00
    err = FUNC3(0x00);
    if (err) goto i2c_error;

    // Start read
    err = FUNC1(SLAVE_I2C_ADDRESS + I2C_READ);
    if (err) goto i2c_error;

    if (!err) {
        int i;
        for (i = 0; i < ROWS_PER_HAND-1; ++i) {
            matrix[slaveOffset+i] = FUNC0(I2C_ACK);
        }
        matrix[slaveOffset+i] = FUNC0(I2C_NACK);
        FUNC2();
    } else {
i2c_error: // the cable is disconnceted, or something else went wrong
        FUNC4();
        return err;
    }

    return 0;
}