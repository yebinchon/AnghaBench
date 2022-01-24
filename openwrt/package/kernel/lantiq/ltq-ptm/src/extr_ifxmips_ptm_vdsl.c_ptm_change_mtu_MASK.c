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

/* Variables and functions */
 int EINVAL ; 
 int ETH_DATA_LEN ; 

__attribute__((used)) static int FUNC0(struct net_device *dev, int mtu)
{
	/* Allow up to 1508 bytes, for RFC4638 */
        if (mtu < 68 || mtu > ETH_DATA_LEN + 8)
                return -EINVAL;
        dev->mtu = mtu;
        return 0;
}