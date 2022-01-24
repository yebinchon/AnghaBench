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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

uint8_t FUNC2(void) {

  uint8_t temp_return = FUNC0();

  if (temp_return == 1) {
    // Perform measurements every 16ms
    FUNC1(0x08, 1);

    // Increase detection integrator value
    FUNC1(0x0B, 1);

    // Oversample to gain two bits for columns
    FUNC1(0x28, 0x42);
    FUNC1(0x29, 0x00);
    FUNC1(0x2A, 0x00);
    FUNC1(0x2B, 0x00);
    FUNC1(0x2C, 0x42);
    FUNC1(0x2D, 0x00);
    FUNC1(0x2E, 0x00);
    FUNC1(0x2F, 0x00);
    FUNC1(0x30, 0x42);
    FUNC1(0x31, 0x42);
    FUNC1(0x32, 0x42);
    FUNC1(0x33, 0x42);

    // Recalibration if touch detected for more than 8 seconds n*0.16s
    FUNC1(0x0C, 50);

    // Enable keys and set key groups
    FUNC1(0x1C, 0x00 | 0x04);
    FUNC1(0x1D, 0x00 | 0x08);
    FUNC1(0x1E, 0x00 | 0x08);
    FUNC1(0x1F, 0x00 | 0x08);
    FUNC1(0x20, 0x00 | 0x04);
    FUNC1(0x21, 0x00 | 0x08);
    FUNC1(0x22, 0x00 | 0x08);
    FUNC1(0x23, 0x00 | 0x08);
    FUNC1(0x24, 0x00 | 0x04);
    FUNC1(0x25, 0x00 | 0x04);
    FUNC1(0x26, 0x00 | 0x04);
    FUNC1(0x27, 0x00 | 0x04);

  }
  return temp_return;
}