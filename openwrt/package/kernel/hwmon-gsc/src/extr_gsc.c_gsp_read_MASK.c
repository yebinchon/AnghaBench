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
typedef  scalar_t__ u8 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ GSP_REG_CURRENT ; 
 scalar_t__ GSP_REG_TEMP_IN ; 
 int FUNC0 (struct i2c_client*,scalar_t__) ; 

__attribute__((used)) static inline int FUNC1(struct i2c_client *client, u8 reg)
{
	unsigned int adc = 0;
	if (reg == GSP_REG_TEMP_IN || reg > GSP_REG_CURRENT)
	{
		adc |= FUNC0(client, reg);
		adc |= FUNC0(client, reg + 1) << 8;
		return adc;
	}
	else
	{
		adc |= FUNC0(client, reg);
		adc |= FUNC0(client, reg + 1) << 8;
		adc |= FUNC0(client, reg + 2) << 16;
		return adc;
	}
}