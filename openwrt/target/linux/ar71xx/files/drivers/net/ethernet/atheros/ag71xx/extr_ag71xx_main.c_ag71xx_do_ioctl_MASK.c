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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct ag71xx {int /*<<< orphan*/ * phy_dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int EOPNOTSUPP ; 
#define  SIOCGIFHWADDR 132 
#define  SIOCGMIIPHY 131 
#define  SIOCGMIIREG 130 
#define  SIOCSIFHWADDR 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ag71xx* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct ag71xx *ag = FUNC2(dev);

	switch (cmd) {
	case SIOCSIFHWADDR:
		if (FUNC0
			(dev->dev_addr, ifr->ifr_data, sizeof(dev->dev_addr)))
			return -EFAULT;
		return 0;

	case SIOCGIFHWADDR:
		if (FUNC1
			(ifr->ifr_data, dev->dev_addr, sizeof(dev->dev_addr)))
			return -EFAULT;
		return 0;

	case SIOCGMIIPHY:
	case SIOCGMIIREG:
	case SIOCSMIIREG:
		if (ag->phy_dev == NULL)
			break;

		return FUNC3(ag->phy_dev, ifr, cmd);

	default:
		break;
	}

	return -EOPNOTSUPP;
}