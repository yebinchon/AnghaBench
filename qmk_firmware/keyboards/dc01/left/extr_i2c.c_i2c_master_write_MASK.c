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
 int TWCR ; 
 int TWDR ; 
 int TWEN ; 
 int TWINT ; 
 scalar_t__ TW_MT_DATA_ACK ; 
 scalar_t__ TW_STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 

uint8_t FUNC1(uint8_t data) {
  TWDR = data;
  TWCR = (1<<TWINT) | (1<<TWEN);

  FUNC0();

  // check if the slave acknowledged us
  return (TW_STATUS == TW_MT_DATA_ACK) ? 0 : 1;
}