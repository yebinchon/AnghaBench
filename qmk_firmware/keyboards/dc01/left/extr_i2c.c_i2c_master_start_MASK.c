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
 int TWSTA ; 
 scalar_t__ TW_MR_SLA_ACK ; 
 scalar_t__ TW_MT_SLA_ACK ; 
 scalar_t__ TW_REP_START ; 
 scalar_t__ TW_START ; 
 scalar_t__ TW_STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 

uint8_t FUNC1(uint8_t address) {
  TWCR = (1<<TWINT) | (1<<TWEN) | (1<<TWSTA);

  FUNC0();

  // check that we started successfully
  if ( (TW_STATUS != TW_START) && (TW_STATUS != TW_REP_START))
    return 1;

  TWDR = address;
  TWCR = (1<<TWINT) | (1<<TWEN);

  FUNC0();

  if ( (TW_STATUS != TW_MT_SLA_ACK) && (TW_STATUS != TW_MR_SLA_ACK) )
    return 1; // slave did not acknowledge
  else
    return 0; // success
}