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
struct switch_port_link {int eee; int /*<<< orphan*/  speed; scalar_t__ rx_flow; scalar_t__ tx_flow; scalar_t__ aneg; scalar_t__ duplex; scalar_t__ link; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Full ; 
 int ADVERTISED_100baseT_Full ; 
 int /*<<< orphan*/  SWITCH_LINK_FLAG_ANEG ; 
 int /*<<< orphan*/  SWITCH_LINK_FLAG_DUPLEX ; 
 int /*<<< orphan*/  SWITCH_LINK_FLAG_EEE_1000BASET ; 
 int /*<<< orphan*/  SWITCH_LINK_FLAG_EEE_100BASET ; 
 int /*<<< orphan*/  SWITCH_LINK_FLAG_LINK ; 
 int /*<<< orphan*/  SWITCH_LINK_FLAG_RX_FLOW ; 
 int /*<<< orphan*/  SWITCH_LINK_FLAG_TX_FLOW ; 
 int /*<<< orphan*/  SWITCH_LINK_SPEED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *msg, struct genl_info *info, int attr,
		   const struct switch_port_link *link)
{
	struct nlattr *p = NULL;
	int err = 0;

	p = FUNC2(msg, attr);
	if (link->link) {
		if (FUNC3(msg, SWITCH_LINK_FLAG_LINK))
			goto nla_put_failure;
	}
	if (link->duplex) {
		if (FUNC3(msg, SWITCH_LINK_FLAG_DUPLEX))
			goto nla_put_failure;
	}
	if (link->aneg) {
		if (FUNC3(msg, SWITCH_LINK_FLAG_ANEG))
			goto nla_put_failure;
	}
	if (link->tx_flow) {
		if (FUNC3(msg, SWITCH_LINK_FLAG_TX_FLOW))
			goto nla_put_failure;
	}
	if (link->rx_flow) {
		if (FUNC3(msg, SWITCH_LINK_FLAG_RX_FLOW))
			goto nla_put_failure;
	}
	if (FUNC4(msg, SWITCH_LINK_SPEED, link->speed))
		goto nla_put_failure;
	if (link->eee & ADVERTISED_100baseT_Full) {
		if (FUNC3(msg, SWITCH_LINK_FLAG_EEE_100BASET))
			goto nla_put_failure;
	}
	if (link->eee & ADVERTISED_1000baseT_Full) {
		if (FUNC3(msg, SWITCH_LINK_FLAG_EEE_1000BASET))
			goto nla_put_failure;
	}
	FUNC1(msg, p);

	return err;

nla_put_failure:
	FUNC0(msg, p);
	return -1;
}