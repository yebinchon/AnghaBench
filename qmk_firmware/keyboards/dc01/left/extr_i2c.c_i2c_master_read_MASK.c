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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int TWCR ; 
 int /*<<< orphan*/  TWDR ; 
 int TWEA ; 
 int TWEN ; 
 int TWINT ; 
 int /*<<< orphan*/  FUNC0 () ; 

uint8_t FUNC1(int ack) {
  TWCR = (1<<TWINT) | (1<<TWEN) | (ack<<TWEA);

  FUNC0();
  return TWDR;
}