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
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  debugfs_dir; } ;
struct ag71xx {TYPE_1__ debug; TYPE_2__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  ag71xx_debugfs_root ; 
 int /*<<< orphan*/  ag71xx_fops_int_stats ; 
 int /*<<< orphan*/  ag71xx_fops_napi_stats ; 
 int /*<<< orphan*/  ag71xx_fops_rx_ring ; 
 int /*<<< orphan*/  ag71xx_fops_tx_ring ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ag71xx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

int FUNC4(struct ag71xx *ag)
{
	struct device *dev = &ag->pdev->dev;

	ag->debug.debugfs_dir = FUNC0(FUNC3(dev),
						   ag71xx_debugfs_root);
	if (!ag->debug.debugfs_dir) {
		FUNC2(dev, "unable to create debugfs directory\n");
		return -ENOENT;
	}

	FUNC1("int_stats", S_IRUGO, ag->debug.debugfs_dir,
			    ag, &ag71xx_fops_int_stats);
	FUNC1("napi_stats", S_IRUGO, ag->debug.debugfs_dir,
			    ag, &ag71xx_fops_napi_stats);
	FUNC1("tx_ring", S_IRUGO, ag->debug.debugfs_dir,
			    ag, &ag71xx_fops_tx_ring);
	FUNC1("rx_ring", S_IRUGO, ag->debug.debugfs_dir,
			    ag, &ag71xx_fops_rx_ring);

	return 0;
}