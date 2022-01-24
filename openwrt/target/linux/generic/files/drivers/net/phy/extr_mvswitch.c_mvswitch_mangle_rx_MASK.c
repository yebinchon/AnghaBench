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
struct sk_buff {unsigned char* data; int len; } ;
struct net_device {struct mvswitch_priv* phy_ptr; } ;
struct mvswitch_priv {int* vlans; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  MV_HEADER_SIZE ; 
 unsigned char* MV_TRAILER_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev, struct sk_buff *skb)
{
	struct mvswitch_priv *priv;
	unsigned char *buf;
	int vlan = -1;
	int i;

	priv = dev->phy_ptr;
	if (FUNC1(!priv))
		return;

#ifdef HEADER_MODE
	buf = skb->data;
	skb_pull(skb, MV_HEADER_SIZE);
#else
	buf = skb->data + skb->len - MV_TRAILER_SIZE;
	if (buf[0] != 0x80)
		return;
#endif

	/* look for the vlan matching the incoming port */
	for (i = 0; i < FUNC0(priv->vlans); i++) {
		if ((1 << buf[1]) & priv->vlans[i])
			vlan = i;
	}

	if (vlan == -1)
		return;

	FUNC2(skb, FUNC3(ETH_P_8021Q), vlan);
}