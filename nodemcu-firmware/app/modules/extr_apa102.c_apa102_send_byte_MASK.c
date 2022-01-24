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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOP ; 
 int /*<<< orphan*/  PLATFORM_GPIO_HIGH ; 
 int /*<<< orphan*/  PLATFORM_GPIO_LOW ; 

__attribute__((used)) static inline void FUNC1(uint32_t data_pin, uint32_t clock_pin, uint8_t byte) {
  int i;
  for (i = 0; i < 8; i++) {
    if (byte & 0x80) {
      FUNC0(data_pin, PLATFORM_GPIO_HIGH); // Set pin high
    } else {
      FUNC0(data_pin, PLATFORM_GPIO_LOW); // Set pin low
    }
    FUNC0(clock_pin, PLATFORM_GPIO_HIGH); // Set pin high
    byte <<= 1;
    NOP;
    NOP;
    FUNC0(clock_pin, PLATFORM_GPIO_LOW); // Set pin low
    NOP;
    NOP;
  }
}