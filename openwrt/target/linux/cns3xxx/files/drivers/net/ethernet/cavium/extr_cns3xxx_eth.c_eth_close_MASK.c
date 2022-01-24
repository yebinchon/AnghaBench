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
struct sw {TYPE_1__* regs; int /*<<< orphan*/  napi; int /*<<< orphan*/  stat_irq; int /*<<< orphan*/  rx_irq; } ;
struct port {size_t id; int /*<<< orphan*/  phydev; struct sw* sw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_auto_poll_cfg; int /*<<< orphan*/ * mac_cfg; } ;

/* Variables and functions */
 int FS_SUSPEND ; 
 int PORT_DISABLE ; 
 int TS_SUSPEND ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct net_device* napi_dev ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct port* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ports_open ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct port *port = FUNC5(dev);
	struct sw *sw = port->sw;
	u32 temp;

	ports_open--;

	temp = FUNC0(&sw->regs->mac_cfg[port->id]);
	temp |= (PORT_DISABLE);
	FUNC1(temp, &sw->regs->mac_cfg[port->id]);

	FUNC7(dev);

	FUNC8(port->phydev);

	if (!ports_open) {
		FUNC2(sw->rx_irq);
		FUNC3(sw->rx_irq, napi_dev);
		FUNC2(sw->stat_irq);
		FUNC3(sw->stat_irq, napi_dev);
		FUNC4(&sw->napi);
		FUNC7(napi_dev);
		temp = FUNC0(&sw->regs->mac_cfg[2]);
		temp |= (PORT_DISABLE);
		FUNC1(temp, &sw->regs->mac_cfg[2]);

		FUNC1(TS_SUSPEND | FS_SUSPEND,
			     &sw->regs->dma_auto_poll_cfg);
	}

	FUNC6(dev);
	return 0;
}