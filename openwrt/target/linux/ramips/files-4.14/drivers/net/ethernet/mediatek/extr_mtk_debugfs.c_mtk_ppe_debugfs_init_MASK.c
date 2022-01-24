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
struct mtk_eth {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  S_IRUGO ; 
 struct mtk_eth* _eth ; 
 struct dentry* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct dentry*,struct mtk_eth*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_ppe_debugfs_foe_fops ; 

int FUNC2(struct mtk_eth *eth)
{
	struct dentry *root;

	_eth = eth;

	root = FUNC0("mtk_ppe", NULL);
	if (!root)
		return -ENOMEM;

	FUNC1("all_entry", S_IRUGO, root, eth, &mtk_ppe_debugfs_foe_fops);

	return 0;
}