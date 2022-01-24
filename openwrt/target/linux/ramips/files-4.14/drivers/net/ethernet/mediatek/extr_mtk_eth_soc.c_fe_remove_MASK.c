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
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct fe_priv {int /*<<< orphan*/  pending_work; int /*<<< orphan*/  hw_stats; int /*<<< orphan*/  rx_napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct fe_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct net_device *dev = FUNC5(pdev);
	struct fe_priv *priv = FUNC3(dev);

	FUNC4(&priv->rx_napi);
	FUNC2(priv->hw_stats);

	FUNC0(&priv->pending_work);

	FUNC7(dev);
	FUNC1(dev);
	FUNC6(pdev, NULL);

	return 0;
}