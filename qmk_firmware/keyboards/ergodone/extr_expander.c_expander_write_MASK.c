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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int EXPANDER_ADDR ; 
 int I2C_WRITE ; 
 scalar_t__ expander_status ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

uint8_t FUNC3(uint8_t reg, uint8_t data)
{
  if (expander_status == 0) {
    return 0;
  }
  uint8_t ret;
  ret = FUNC0(EXPANDER_ADDR | I2C_WRITE);
  if (ret) goto stop;
  ret = FUNC2(reg);
  if (ret) goto stop;
  ret = FUNC2(data);
 stop:
  FUNC1();
  return ret;
}