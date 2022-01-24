#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct device_node {int dummy; } ;
struct ag71xx {int* fifodata; TYPE_2__* pdev; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG0 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG1 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG2 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG4 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG5 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG1 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG2 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_MFL ; 
 int FIFO_CFG0_INIT ; 
 int FIFO_CFG4_INIT ; 
 int FIFO_CFG5_INIT ; 
 int MAC_CFG1_INIT ; 
 int MAC_CFG1_RFC ; 
 int MAC_CFG1_TFC ; 
 int MAC_CFG2_LEN_CHECK ; 
 int MAC_CFG2_PAD_CRC_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct device_node*,char*) ; 

__attribute__((used)) static void FUNC3(struct ag71xx *ag)
{
	struct device_node *np = ag->pdev->dev.of_node;
	u32 init = MAC_CFG1_INIT;

	/* setup MAC configuration registers */
	if (FUNC2(np, "flow-control"))
		init |= MAC_CFG1_TFC | MAC_CFG1_RFC;
	FUNC1(ag, AG71XX_REG_MAC_CFG1, init);

	FUNC0(ag, AG71XX_REG_MAC_CFG2,
		  MAC_CFG2_PAD_CRC_EN | MAC_CFG2_LEN_CHECK);

	/* setup max frame length to zero */
	FUNC1(ag, AG71XX_REG_MAC_MFL, 0);

	/* setup FIFO configuration registers */
	FUNC1(ag, AG71XX_REG_FIFO_CFG0, FIFO_CFG0_INIT);
	FUNC1(ag, AG71XX_REG_FIFO_CFG1, ag->fifodata[0]);
	FUNC1(ag, AG71XX_REG_FIFO_CFG2, ag->fifodata[1]);
	FUNC1(ag, AG71XX_REG_FIFO_CFG4, FIFO_CFG4_INIT);
	FUNC1(ag, AG71XX_REG_FIFO_CFG5, FIFO_CFG5_INIT);
}