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
struct ag71xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_INT_ENABLE ; 
 int /*<<< orphan*/  AG71XX_REG_RX_CTRL ; 
 int /*<<< orphan*/  AG71XX_REG_TX_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ag71xx *ag)
{
	/* disable all interrupts and stop the rx/tx engine */
	FUNC0(ag, AG71XX_REG_INT_ENABLE, 0);
	FUNC0(ag, AG71XX_REG_RX_CTRL, 0);
	FUNC0(ag, AG71XX_REG_TX_CTRL, 0);
}