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

/* Variables and functions */
 scalar_t__ ERROR_DISCONNECT_COUNT ; 
 int ROWS_PER_HAND ; 
 int /*<<< orphan*/  TXLED0 ; 
 int /*<<< orphan*/  TXLED1 ; 
 int FUNC0 () ; 
 scalar_t__ error_count ; 
 scalar_t__ isLeftHand ; 
 scalar_t__* matrix ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__* serial_master_buffer ; 
 scalar_t__ FUNC2 () ; 

uint8_t FUNC3(void) {

  int ret = FUNC0();

  int offset = (isLeftHand) ? 0 : ROWS_PER_HAND;

  for (int i = 0; i < ROWS_PER_HAND; ++i) {
    serial_master_buffer[i] = matrix[offset+i];
  }

  if( FUNC2() ) {
    // turn on the indicator led when halves are disconnected
    TXLED1;

    error_count++;

    if (error_count > ERROR_DISCONNECT_COUNT) {
        // reset other half if disconnected
      int slaveOffset = (isLeftHand) ? (ROWS_PER_HAND) : 0;
      for (int i = 0; i < ROWS_PER_HAND; ++i) {
          matrix[slaveOffset+i] = 0;
      }
    }
  } else {
    // turn off the indicator led on no error
    TXLED0;
    error_count = 0;
  }
  FUNC1();
  return ret;
}