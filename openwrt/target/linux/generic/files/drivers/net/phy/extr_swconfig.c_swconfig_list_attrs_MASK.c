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
struct switch_dev {unsigned long def_global; unsigned long def_vlan; unsigned long def_port; TYPE_1__* ops; } ;
struct switch_attrlist {int n_attr; TYPE_2__* attr; } ;
struct switch_attr {int dummy; } ;
struct swconfig_callback {int* args; scalar_t__ msg; int /*<<< orphan*/  fill; struct genl_info* info; } ;
struct sk_buff {int dummy; } ;
struct genlmsghdr {int cmd; } ;
struct genl_info {int /*<<< orphan*/  nlhdr; } ;
typedef  int /*<<< orphan*/  cb ;
struct TYPE_4__ {scalar_t__ disabled; } ;
struct TYPE_3__ {struct switch_attrlist attr_port; struct switch_attrlist attr_vlan; struct switch_attrlist attr_global; } ;

/* Variables and functions */
 int FUNC0 (struct switch_attr*) ; 
 int EINVAL ; 
 int SWITCH_ATTR_DEFAULTS_OFFSET ; 
#define  SWITCH_CMD_LIST_GLOBAL 130 
#define  SWITCH_CMD_LIST_PORT 129 
#define  SWITCH_CMD_LIST_VLAN 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct switch_attr* default_global ; 
 struct switch_attr* default_port ; 
 struct switch_attr* default_vlan ; 
 int FUNC2 (scalar_t__,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct swconfig_callback*,int /*<<< orphan*/ ,int) ; 
 struct genlmsghdr* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  swconfig_dump_attr ; 
 struct switch_dev* FUNC6 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct switch_dev*) ; 
 int FUNC8 (struct swconfig_callback*,void*) ; 
 int /*<<< orphan*/  FUNC9 (int,unsigned long*) ; 

__attribute__((used)) static int
FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	struct genlmsghdr *hdr = FUNC4(info->nlhdr);
	const struct switch_attrlist *alist;
	struct switch_dev *dev;
	struct swconfig_callback cb;
	int err = -EINVAL;
	int i;

	/* defaults */
	struct switch_attr *def_list;
	unsigned long *def_active;
	int n_def;

	dev = FUNC6(info);
	if (!dev)
		return -EINVAL;

	switch (hdr->cmd) {
	case SWITCH_CMD_LIST_GLOBAL:
		alist = &dev->ops->attr_global;
		def_list = default_global;
		def_active = &dev->def_global;
		n_def = FUNC0(default_global);
		break;
	case SWITCH_CMD_LIST_VLAN:
		alist = &dev->ops->attr_vlan;
		def_list = default_vlan;
		def_active = &dev->def_vlan;
		n_def = FUNC0(default_vlan);
		break;
	case SWITCH_CMD_LIST_PORT:
		alist = &dev->ops->attr_port;
		def_list = default_port;
		def_active = &dev->def_port;
		n_def = FUNC0(default_port);
		break;
	default:
		FUNC1(1);
		goto out;
	}

	FUNC3(&cb, 0, sizeof(cb));
	cb.info = info;
	cb.fill = swconfig_dump_attr;
	for (i = 0; i < alist->n_attr; i++) {
		if (alist->attr[i].disabled)
			continue;
		cb.args[0] = i;
		err = FUNC8(&cb, (void *) &alist->attr[i]);
		if (err < 0)
			goto error;
	}

	/* defaults */
	for (i = 0; i < n_def; i++) {
		if (!FUNC9(i, def_active))
			continue;
		cb.args[0] = SWITCH_ATTR_DEFAULTS_OFFSET + i;
		err = FUNC8(&cb, (void *) &def_list[i]);
		if (err < 0)
			goto error;
	}
	FUNC7(dev);

	if (!cb.msg)
		return 0;

	return FUNC2(cb.msg, info);

error:
	if (cb.msg)
		FUNC5(cb.msg);
out:
	FUNC7(dev);
	return err;
}