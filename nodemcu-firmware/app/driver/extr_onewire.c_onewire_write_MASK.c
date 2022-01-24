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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 

void FUNC1(uint8_t pin, uint8_t v, uint8_t power /* = 0 */) {
  uint8_t bitMask;

  for (bitMask = 0x01; bitMask; bitMask <<= 1) {
    // send last bit with requested power mode
    FUNC0(pin, (bitMask & v)?1:0, bitMask & 0x80 ? power : 0);
  }
}