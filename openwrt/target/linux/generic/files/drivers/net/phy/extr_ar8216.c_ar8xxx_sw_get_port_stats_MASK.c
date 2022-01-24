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
typedef  void* u64 ;
struct switch_port_stats {void* rx_bytes; void* tx_bytes; } ;
struct switch_dev {int ports; } ;
struct ar8xxx_priv {void** mib_stats; int /*<<< orphan*/  mib_lock; TYPE_1__* chip; int /*<<< orphan*/  mib_poll_interval; } ;
struct TYPE_2__ {size_t mib_rxb_id; size_t mib_txb_id; int num_mibs; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ar8xxx_priv* FUNC3 (struct switch_dev*) ; 

int
FUNC4(struct switch_dev *dev, int port,
			struct switch_port_stats *stats)
{
	struct ar8xxx_priv *priv = FUNC3(dev);
	u64 *mib_stats;

	if (!FUNC0(priv) || !priv->mib_poll_interval)
		return -EOPNOTSUPP;

	if (!(priv->chip->mib_rxb_id || priv->chip->mib_txb_id))
		return -EOPNOTSUPP;

	if (port >= dev->ports)
		return -EINVAL;

	FUNC1(&priv->mib_lock);

	mib_stats = &priv->mib_stats[port * priv->chip->num_mibs];

	stats->tx_bytes = mib_stats[priv->chip->mib_txb_id];
	stats->rx_bytes = mib_stats[priv->chip->mib_rxb_id];

	FUNC2(&priv->mib_lock);
	return 0;
}