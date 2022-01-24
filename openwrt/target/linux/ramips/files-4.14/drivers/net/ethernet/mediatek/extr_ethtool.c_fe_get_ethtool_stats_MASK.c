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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct fe_priv {struct fe_hw_stats* hw_stats; } ;
struct fe_hw_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  stats_lock; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fe_gdma_str ; 
 int /*<<< orphan*/  FUNC1 (struct fe_priv*) ; 
 struct fe_priv* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev,
				 struct ethtool_stats *stats, u64 *data)
{
	struct fe_priv *priv = FUNC2(dev);
	struct fe_hw_stats *hwstats = priv->hw_stats;
	u64 *data_src, *data_dst;
	unsigned int start;
	int i;

	if (FUNC4(dev) && FUNC3(dev)) {
		if (FUNC5(&hwstats->stats_lock)) {
			FUNC1(priv);
			FUNC6(&hwstats->stats_lock);
		}
	}

	do {
		data_src = &hwstats->tx_bytes;
		data_dst = data;
		start = FUNC7(&hwstats->syncp);

		for (i = 0; i < FUNC0(fe_gdma_str); i++)
			*data_dst++ = *data_src++;

	} while (FUNC8(&hwstats->syncp, start));
}