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
struct sk_buff {int dummy; } ;
struct gsw_mt753x {int dummy; } ;
struct genl_info {int dummy; } ;
typedef  int /*<<< orphan*/  dev_info ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MT753X_ATTR_TYPE_MESG ; 
 int /*<<< orphan*/  MT753X_CMD_REPLY ; 
 int FUNC0 (char*,int) ; 
 int FUNC1 (struct genl_info*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct genl_info *info, struct gsw_mt753x *gsw)
{
	struct sk_buff *rep_skb = NULL;
	char dev_info[512];
	int ret;

	ret = FUNC0(dev_info, sizeof(dev_info));
	if (!ret) {
		FUNC5("No switch registered\n");
		return -EINVAL;
	}

	ret = FUNC1(info, MT753X_CMD_REPLY, &rep_skb);
	if (ret < 0)
		goto err;

	ret = FUNC3(rep_skb, MT753X_ATTR_TYPE_MESG, dev_info);
	if (ret < 0)
		goto err;

	return FUNC2(rep_skb, info);

err:
	if (rep_skb)
		FUNC4(rep_skb);

	return ret;
}