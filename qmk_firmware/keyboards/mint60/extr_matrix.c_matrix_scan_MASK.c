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
 int ROWS_PER_HAND ; 
 scalar_t__ isLeftHand ; 
 scalar_t__ is_master ; 
 int /*<<< orphan*/ * matrix ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * serial_master_buffer ; 

uint8_t FUNC3(void)
{
    if (is_master) {
        FUNC0();
    }else{
        FUNC2();

          int offset = (isLeftHand) ? ROWS_PER_HAND : 0;

          for (int i = 0; i < ROWS_PER_HAND; ++i) {
              matrix[offset+i] = serial_master_buffer[i];
          }

        FUNC1();
    }
    return 1;
}