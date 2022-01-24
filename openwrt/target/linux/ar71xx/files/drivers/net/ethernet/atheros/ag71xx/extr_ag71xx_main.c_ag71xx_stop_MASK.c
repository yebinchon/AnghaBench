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
struct net_device {int dummy; } ;
struct ag71xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*) ; 
 struct ag71xx* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct ag71xx *ag = FUNC2(dev);

	FUNC3(dev);
	FUNC1(ag);
	FUNC0(ag);

	return 0;
}