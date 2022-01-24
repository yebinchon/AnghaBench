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
struct net_device {int mtu; } ;
struct ag71xx {unsigned int max_frame_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MAC_MFL ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ ,unsigned int) ; 
 struct ag71xx* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, int new_mtu)
{
	struct ag71xx *ag = FUNC2(dev);
	unsigned int max_frame_len;

	max_frame_len = FUNC0(new_mtu);
	if (new_mtu < 68 || max_frame_len > ag->max_frame_len)
		return -EINVAL;

	if (FUNC3(dev))
		return -EBUSY;

	dev->mtu = new_mtu;
	FUNC1(ag, AG71XX_REG_MAC_MFL,
		  FUNC0(dev->mtu));

	return 0;
}