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
struct switch_dev {int id; int vlans; int ports; int cpu_port; TYPE_1__* portmap; scalar_t__ name; scalar_t__ alias; scalar_t__ devname; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int virt; scalar_t__ s; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  SWITCH_ATTR_ALIAS ; 
 int /*<<< orphan*/  SWITCH_ATTR_CPU_PORT ; 
 int /*<<< orphan*/  SWITCH_ATTR_DEV_NAME ; 
 int /*<<< orphan*/  SWITCH_ATTR_ID ; 
 int /*<<< orphan*/  SWITCH_ATTR_NAME ; 
 int /*<<< orphan*/  SWITCH_ATTR_PORTMAP ; 
 int /*<<< orphan*/  SWITCH_ATTR_PORTS ; 
 int /*<<< orphan*/  SWITCH_ATTR_VLANS ; 
 int /*<<< orphan*/  SWITCH_CMD_NEW_ATTR ; 
 int /*<<< orphan*/  SWITCH_PORTMAP_SEGMENT ; 
 int /*<<< orphan*/  SWITCH_PORTMAP_VIRT ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  switch_fam ; 

__attribute__((used)) static int
FUNC8(struct sk_buff *msg, u32 pid, u32 seq, int flags,
		const struct switch_dev *dev)
{
	struct nlattr *p = NULL, *m = NULL;
	void *hdr;
	int i;

	hdr = FUNC3(msg, pid, seq, &switch_fam, flags,
			SWITCH_CMD_NEW_ATTR);
	if (FUNC0(hdr))
		return -1;

	if (FUNC7(msg, SWITCH_ATTR_ID, dev->id))
		goto nla_put_failure;
	if (FUNC6(msg, SWITCH_ATTR_DEV_NAME, dev->devname))
		goto nla_put_failure;
	if (FUNC6(msg, SWITCH_ATTR_ALIAS, dev->alias))
		goto nla_put_failure;
	if (FUNC6(msg, SWITCH_ATTR_NAME, dev->name))
		goto nla_put_failure;
	if (FUNC7(msg, SWITCH_ATTR_VLANS, dev->vlans))
		goto nla_put_failure;
	if (FUNC7(msg, SWITCH_ATTR_PORTS, dev->ports))
		goto nla_put_failure;
	if (FUNC7(msg, SWITCH_ATTR_CPU_PORT, dev->cpu_port))
		goto nla_put_failure;

	m = FUNC5(msg, SWITCH_ATTR_PORTMAP);
	if (!m)
		goto nla_put_failure;
	for (i = 0; i < dev->ports; i++) {
		p = FUNC5(msg, SWITCH_ATTR_PORTS);
		if (!p)
			continue;
		if (dev->portmap[i].s) {
			if (FUNC6(msg, SWITCH_PORTMAP_SEGMENT,
						dev->portmap[i].s))
				goto nla_put_failure;
			if (FUNC7(msg, SWITCH_PORTMAP_VIRT,
						dev->portmap[i].virt))
				goto nla_put_failure;
		}
		FUNC4(msg, p);
	}
	FUNC4(msg, m);
	FUNC2(msg, hdr);
	return msg->len;
nla_put_failure:
	FUNC1(msg, hdr);
	return -EMSGSIZE;
}