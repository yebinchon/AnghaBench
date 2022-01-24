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
struct port {struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct _tx_ring {scalar_t__ num_used; int stopped; } ;

/* Variables and functions */
 scalar_t__ TX_DESCS ; 
 scalar_t__ TX_DESC_RESERVE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct port** switch_port_tab ; 

__attribute__((used)) static void FUNC2(struct _tx_ring *tx_ring)
{
	bool stop = false;
	int i;

	if (tx_ring->num_used >= TX_DESCS - TX_DESC_RESERVE)
		stop = true;

	if (tx_ring->stopped == stop)
		return;

	tx_ring->stopped = stop;

	for (i = 0; i < 4; i++) {
		struct port *port = switch_port_tab[i];
		struct net_device *dev;

		if (!port)
			continue;

		dev = port->netdev;

		if (stop)
			FUNC0(dev);
		else
			FUNC1(dev);
	}
}