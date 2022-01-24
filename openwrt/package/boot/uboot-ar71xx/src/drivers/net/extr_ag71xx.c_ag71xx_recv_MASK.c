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
typedef  int /*<<< orphan*/  u32 ;
struct eth_device {int /*<<< orphan*/  name; scalar_t__ priv; } ;
struct ag71xx_ring {unsigned int curr; TYPE_1__* buf; } ;
struct ag71xx_desc {int /*<<< orphan*/  ctrl; } ;
struct ag71xx {struct ag71xx_ring rx_ring; } ;
struct TYPE_2__ {struct ag71xx_desc* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_RX_CTRL ; 
 unsigned int AG71XX_RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  DESC_EMPTY ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__* NetRxPackets ; 
 int /*<<< orphan*/  PKTSIZE_ALIGN ; 
 int RX_CTRL_RXE ; 
 scalar_t__ FUNC2 (struct ag71xx_desc*) ; 
 int FUNC3 (struct ag71xx_desc*) ; 
 int FUNC4 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct eth_device *dev)
{
    struct ag71xx *ag = (struct ag71xx *) dev->priv;
	struct ag71xx_ring *ring = &ag->rx_ring;

    for (;;) {
		unsigned int i = ring->curr % AG71XX_RX_RING_SIZE;
		struct ag71xx_desc *desc = ring->buf[i].desc;
		int pktlen;
		
		if (FUNC2(desc))
			break;

		FUNC0("%s: rx packets, curr=%u\n", dev->name, ring->curr);

        pktlen = FUNC3(desc);
		pktlen -= ETH_FCS_LEN;


		FUNC1(NetRxPackets[i] , pktlen);
		FUNC6( (u32) NetRxPackets[i], PKTSIZE_ALIGN);

        ring->buf[i].desc->ctrl = DESC_EMPTY;
		ring->curr++;
		if (ring->curr >= AG71XX_RX_RING_SIZE){
			ring->curr = 0;
		}

    }

	if ((FUNC4(ag, AG71XX_REG_RX_CTRL) & RX_CTRL_RXE) == 0) {
		/* start RX engine */
		FUNC5(ag, AG71XX_REG_RX_CTRL, RX_CTRL_RXE);
	}
	
	return 0;
}