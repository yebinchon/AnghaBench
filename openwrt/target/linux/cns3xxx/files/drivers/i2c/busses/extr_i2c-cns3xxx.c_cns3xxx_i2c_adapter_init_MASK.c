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
struct cns3xxx_i2c {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int CNS3xxx_I2C_CLK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int I2C_ACTION_DONE_FLAG ; 
 int I2C_BUS_ERROR_FLAG ; 
 scalar_t__ I2C_CONTROLLER_REG ; 
 int I2C_INTERRUPT_STATUS_REG ; 
 int I2C_TIME_OUT_REG ; 
 int I2C_TWI_OUT_DLY_REG ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct clk*) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct cns3xxx_i2c *i2c)
{
	struct clk *clk;

	clk = FUNC4(i2c->dev, "cpu");
	if (FUNC2(!clk))
		return;

	/* Disable the I2C */
	I2C_CONTROLLER_REG = 0;	/* Disabled the I2C */

	/* Check the Reg Dump when testing */
	I2C_TIME_OUT_REG =
	    (((((FUNC3(clk) / (2 * CNS3xxx_I2C_CLK)) -
		1) & 0x3FF) << 8) | (1 << 7) | 0x7F);
	I2C_TWI_OUT_DLY_REG |= 0x3;

	/* Enable The Interrupt */
	FUNC1();

	/* Clear Interrupt Status (0x2 | 0x1) */
	I2C_INTERRUPT_STATUS_REG |= (I2C_ACTION_DONE_FLAG | I2C_BUS_ERROR_FLAG);

	/* Enable the I2C Controller */
	FUNC0();
}