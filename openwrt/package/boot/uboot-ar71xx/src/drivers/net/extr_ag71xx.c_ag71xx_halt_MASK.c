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
struct eth_device {scalar_t__ priv; } ;
struct ag71xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_RX_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct eth_device *dev)
{
    struct ag71xx *ag = (struct ag71xx *) dev->priv;

    /* stop RX engine */
	FUNC1(ag, AG71XX_REG_RX_CTRL, 0);

	FUNC0(ag);
}