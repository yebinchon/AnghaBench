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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ I2C_LOOP_TIMEOUT ; 
 int TWCR ; 
 int TWINT ; 

__attribute__((used)) inline static
void FUNC0(void) {
  uint16_t lim = 0;
  while(!(TWCR & (1<<TWINT)) && lim < I2C_LOOP_TIMEOUT)
    lim++;

  // easier way, but will wait slightly longer
  // _delay_us(100);
}