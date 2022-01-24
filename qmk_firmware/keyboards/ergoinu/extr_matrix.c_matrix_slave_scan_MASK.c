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
 scalar_t__ isLeftHand ; 
 int /*<<< orphan*/ * matrix ; 
 int /*<<< orphan*/ * serial_slave_buffer ; 

void FUNC1(void) {
  FUNC0();

  int offset = (isLeftHand) ? 0 : ROWS_PER_HAND;

  for (int i = 0; i < ROWS_PER_HAND; ++i) {
    serial_slave_buffer[i] = matrix[offset+i];
  }
}