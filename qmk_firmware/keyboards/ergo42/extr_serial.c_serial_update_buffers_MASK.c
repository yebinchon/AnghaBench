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

/* Variables and functions */
 int SERIAL_DELAY ; 
 int SERIAL_MASTER_BUFFER_LENGTH ; 
 int SERIAL_SLAVE_BUFFER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__* serial_master_buffer ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__* serial_slave_buffer ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(void) {
  // this code is very time dependent, so we need to disable interrupts
  FUNC1();

  // signal to the slave that we want to start a transaction
  FUNC6();
  FUNC5();
  FUNC0(1);

  // wait for the slaves response
  FUNC4();
  FUNC3();
  FUNC0(SERIAL_DELAY);

  // check if the slave is present
  if (FUNC8()) {
    // slave failed to pull the line low, assume not present
    FUNC2();
    return 1;
  }

  // if the slave is present syncronize with it
  FUNC10();

  uint8_t checksum_computed = 0;
  // receive data from the slave
  for (int i = 0; i < SERIAL_SLAVE_BUFFER_LENGTH; ++i) {
    serial_slave_buffer[i] = FUNC7();
    FUNC10();
    checksum_computed += serial_slave_buffer[i];
  }
  uint8_t checksum_received = FUNC7();
  FUNC10();

  if (checksum_computed != checksum_received) {
    FUNC2();
    return 1;
  }

  uint8_t checksum = 0;
  // send data to the slave
  for (int i = 0; i < SERIAL_MASTER_BUFFER_LENGTH; ++i) {
    FUNC9(serial_master_buffer[i]);
    FUNC10();
    checksum += serial_master_buffer[i];
  }
  FUNC9(checksum);
  FUNC10();

  // always, release the line when not in use
  FUNC6();
  FUNC3();

  FUNC2();
  return 0;
}