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
typedef  int u64 ;
struct TYPE_4__ {char* s; } ;
struct switch_val {unsigned int port_vlan; int len; TYPE_2__ value; } ;
struct switch_dev {unsigned int ports; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {char* buf; int* mib_stats; scalar_t__ mib_type; int /*<<< orphan*/  mib_lock; int /*<<< orphan*/  mib_poll_interval; struct ar8xxx_chip* chip; } ;
struct ar8xxx_chip {unsigned int num_mibs; TYPE_1__* mib_decs; } ;
typedef  int /*<<< orphan*/  buf1 ;
struct TYPE_3__ {scalar_t__ type; char* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*) ; 
 int FUNC2 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar8xxx_priv*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 struct ar8xxx_priv* FUNC8 (struct switch_dev*) ; 

int
FUNC9(struct switch_dev *dev,
		       const struct switch_attr *attr,
		       struct switch_val *val)
{
	struct ar8xxx_priv *priv = FUNC8(dev);
	const struct ar8xxx_chip *chip = priv->chip;
	u64 *mib_stats, mib_data;
	unsigned int port;
	int ret;
	char *buf = priv->buf;
	char buf1[64];
	const char *mib_name;
	int i, len = 0;
	bool mib_stats_empty = true;

	if (!FUNC1(priv) || !priv->mib_poll_interval)
		return -EOPNOTSUPP;

	port = val->port_vlan;
	if (port >= dev->ports)
		return -EINVAL;

	FUNC4(&priv->mib_lock);
	ret = FUNC2(priv);
	if (ret)
		goto unlock;

	FUNC3(priv, port, false);

	len += FUNC6(buf + len, sizeof(priv->buf) - len,
			"MIB counters\n");

	mib_stats = &priv->mib_stats[port * chip->num_mibs];
	for (i = 0; i < chip->num_mibs; i++) {
		if (chip->mib_decs[i].type > priv->mib_type)
			continue;
		mib_name = chip->mib_decs[i].name;
		mib_data = mib_stats[i];
		len += FUNC6(buf + len, sizeof(priv->buf) - len,
				"%-12s: %llu\n", mib_name, mib_data);
		if ((!FUNC7(mib_name, "TxByte") ||
		    !FUNC7(mib_name, "RxGoodByte")) &&
		    mib_data >= 1024) {
			FUNC0(buf1, sizeof(buf1), mib_data);
			--len; /* discard newline at the end of buf */
			len += FUNC6(buf + len, sizeof(priv->buf) - len,
					" (%s)\n", buf1);
		}
		if (mib_stats_empty && mib_data)
			mib_stats_empty = false;
	}

	if (mib_stats_empty)
		len = FUNC6(buf, sizeof(priv->buf), "No MIB data");

	val->value.s = buf;
	val->len = len;

	ret = 0;

unlock:
	FUNC5(&priv->mib_lock);
	return ret;
}