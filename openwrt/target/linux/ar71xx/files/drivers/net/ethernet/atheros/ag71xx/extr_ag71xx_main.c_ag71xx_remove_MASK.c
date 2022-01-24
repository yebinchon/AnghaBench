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
struct ag71xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*) ; 
 struct ag71xx* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct net_device *dev = FUNC3(pdev);
	struct ag71xx *ag;

	if (!dev)
		return 0;

	ag = FUNC2(dev);
	FUNC0(ag);
	FUNC1(ag);
	FUNC5(dev);
	FUNC4(pdev, NULL);
	return 0;
}