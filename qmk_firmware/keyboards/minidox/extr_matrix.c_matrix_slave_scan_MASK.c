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
 int MATRIX_ROWS ; 
 int ROWS_PER_HAND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void** i2c_slave_buffer ; 
 scalar_t__ isLeftHand ; 
 void** matrix ; 
 void** serial_slave_buffer ; 

void FUNC1(void) {
    FUNC0();

    int offset = (isLeftHand) ? 0 : (MATRIX_ROWS / 2);

#ifdef USE_I2C
    for (int i = 0; i < ROWS_PER_HAND; ++i) {
        /* i2c_slave_buffer[i] = matrix[offset+i]; */
        i2c_slave_buffer[i] = matrix[offset+i];
    }
#else // USE_SERIAL
    for (int i = 0; i < ROWS_PER_HAND; ++i) {
        serial_slave_buffer[i] = matrix[offset+i];
    }
#endif
}