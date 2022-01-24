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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I2C_TIMEOUT ; 
 int /*<<< orphan*/  LEFT ; 
 int /*<<< orphan*/  RIGHT ; 
 int /*<<< orphan*/  TWI_CMD_LED_SET_ALL_TO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t r, uint8_t g, uint8_t b) {
  uint8_t buf[] = {
    TWI_CMD_LED_SET_ALL_TO,
    b, g, r
  };
  FUNC2(FUNC0(LEFT), buf, sizeof(buf), I2C_TIMEOUT);
  FUNC2(FUNC0(RIGHT), buf, sizeof(buf), I2C_TIMEOUT);
  FUNC1(10);
}