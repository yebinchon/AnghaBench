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
struct sk_buff {unsigned int len; scalar_t__ protocol; } ;
struct fe_priv {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 unsigned int ETH_ZLEN ; 
 int FE_FLAG_PADDING_64B ; 
 int FE_FLAG_PADDING_BUG ; 
 unsigned int VLAN_ETH_ZLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline int FUNC5(struct sk_buff *skb, struct fe_priv *priv)
{
	unsigned int len;
	int ret;

	ret = 0;
	if (FUNC4(skb->len < VLAN_ETH_ZLEN)) {
		if ((priv->flags & FE_FLAG_PADDING_64B) &&
		    !(priv->flags & FE_FLAG_PADDING_BUG))
			return ret;

		if (FUNC3(skb))
			len = ETH_ZLEN;
		else if (skb->protocol == FUNC0(ETH_P_8021Q))
			len = VLAN_ETH_ZLEN;
		else if (!(priv->flags & FE_FLAG_PADDING_64B))
			len = ETH_ZLEN;
		else
			return ret;

		if (skb->len < len) {
			ret = FUNC1(skb, len - skb->len);
			if (ret < 0)
				return ret;
			skb->len = len;
			FUNC2(skb, len);
		}
	}

	return ret;
}