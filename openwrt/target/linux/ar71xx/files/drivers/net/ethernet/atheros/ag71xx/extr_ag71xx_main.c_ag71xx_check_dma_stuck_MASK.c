#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ag71xx {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned long trans_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_FIFO_DEPTH ; 
 int /*<<< orphan*/  AG71XX_REG_RX_SM ; 
 int /*<<< orphan*/  AG71XX_REG_TX_SM ; 
 int HZ ; 
 int FUNC0 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static bool FUNC5(struct ag71xx *ag)
{
	unsigned long timestamp;
	u32 rx_sm, tx_sm, rx_fd;

	timestamp = FUNC2(ag->dev, 0)->trans_start;
	if (FUNC1(FUNC4(jiffies, timestamp + HZ/10)))
		return false;

	if (!FUNC3(ag->dev))
		return false;

	rx_sm = FUNC0(ag, AG71XX_REG_RX_SM);
	if ((rx_sm & 0x7) == 0x3 && ((rx_sm >> 4) & 0x7) == 0x6)
		return true;

	tx_sm = FUNC0(ag, AG71XX_REG_TX_SM);
	rx_fd = FUNC0(ag, AG71XX_REG_FIFO_DEPTH);
	if (((tx_sm >> 4) & 0x7) == 0 && ((rx_sm & 0x7) == 0) &&
	    ((rx_sm >> 4) & 0x7) == 0 && rx_fd == 0)
		return true;

	return false;
}