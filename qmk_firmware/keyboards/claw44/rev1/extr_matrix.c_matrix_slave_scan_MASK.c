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
 int ROWS_PER_HAND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* i2c_slave_buffer ; 
 scalar_t__ isLeftHand ; 
 scalar_t__* matrix ; 
 scalar_t__* serial_slave_buffer ; 
 int slave_buffer_change_count ; 

void FUNC1(void) {
    FUNC0();

    int offset = (isLeftHand) ? 0 : ROWS_PER_HAND;

#ifdef USE_MATRIX_I2C
    for (int i = 0; i < ROWS_PER_HAND; ++i) {
        /* i2c_slave_buffer[i] = matrix[offset+i]; */
        i2c_slave_buffer[i] = matrix[offset+i];
    }
#else // USE_SERIAL
  #ifdef SERIAL_USE_MULTI_TRANSACTION
    int change = 0;
  #endif
    for (int i = 0; i < ROWS_PER_HAND; ++i) {
  #ifdef SERIAL_USE_MULTI_TRANSACTION
        if( serial_slave_buffer[i] != matrix[offset+i] )
	    change = 1;
  #endif
        serial_slave_buffer[i] = matrix[offset+i];
    }
  #ifdef SERIAL_USE_MULTI_TRANSACTION
    slave_buffer_change_count += change;
  #endif
#endif
}