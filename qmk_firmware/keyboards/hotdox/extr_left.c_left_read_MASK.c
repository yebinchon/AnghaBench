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
 int /*<<< orphan*/  HOTDOX_I2C_TIMEOUT ; 
 int /*<<< orphan*/  I2C_ADDR_READ ; 
 int /*<<< orphan*/  I2C_ADDR_WRITE ; 
 int /*<<< orphan*/  i2c_initialized ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

uint8_t FUNC4(uint8_t reg, uint8_t *data)
{
  if (!i2c_initialized)
  {
    return 0;
  }

  uint8_t ret = 0;

  ret = FUNC1(I2C_ADDR_WRITE, HOTDOX_I2C_TIMEOUT);     if (ret) goto out;
  ret = FUNC3(reg, HOTDOX_I2C_TIMEOUT);                if (ret) goto out;
  ret = FUNC1(I2C_ADDR_READ, HOTDOX_I2C_TIMEOUT);      if (ret) goto out;

  *data = FUNC0(HOTDOX_I2C_TIMEOUT);

out:
  FUNC2();
  return ret;
}