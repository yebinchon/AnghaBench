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
typedef  int u32 ;
typedef  int u16 ;
struct switch_port_link {int link; int duplex; int aneg; void* speed; } ;
struct switch_dev {int dummy; } ;
struct b53_device {int enabled_ports; int /*<<< orphan*/  duplex_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_LINK_STAT ; 
 int /*<<< orphan*/  B53_SPEED_STAT ; 
 int /*<<< orphan*/  B53_STAT_PAGE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
#define  SPEED_STAT_1000M 130 
#define  SPEED_STAT_100M 129 
#define  SPEED_STAT_10M 128 
 void* SWITCH_PORT_SPEED_10 ; 
 void* SWITCH_PORT_SPEED_100 ; 
 void* SWITCH_PORT_SPEED_1000 ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (struct b53_device*) ; 
 scalar_t__ FUNC6 (struct b53_device*) ; 
 scalar_t__ FUNC7 (struct b53_device*,int) ; 
 struct b53_device* FUNC8 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC9(struct switch_dev *dev, int port,
			     struct switch_port_link *link)
{
	struct b53_device *priv = FUNC8(dev);

	if (FUNC7(priv, port)) {
		link->link = 1;
		link->duplex = 1;
		link->speed = FUNC5(priv) || FUNC6(priv) ?
				SWITCH_PORT_SPEED_100 : SWITCH_PORT_SPEED_1000;
		link->aneg = 0;
	} else if (priv->enabled_ports & FUNC0(port)) {
		u32 speed;
		u16 lnk, duplex;

		FUNC3(priv, B53_STAT_PAGE, B53_LINK_STAT, &lnk);
		FUNC3(priv, B53_STAT_PAGE, priv->duplex_reg, &duplex);

		lnk = (lnk >> port) & 1;
		duplex = (duplex >> port) & 1;

		if (FUNC5(priv) || FUNC6(priv)) {
			u16 tmp;

			FUNC3(priv, B53_STAT_PAGE, B53_SPEED_STAT, &tmp);
			speed = FUNC1(tmp, port);
		} else {
			FUNC4(priv, B53_STAT_PAGE, B53_SPEED_STAT, &speed);
			speed = FUNC2(speed, port);
		}

		link->link = lnk;
		if (lnk) {
			link->duplex = duplex;
			switch (speed) {
			case SPEED_STAT_10M:
				link->speed = SWITCH_PORT_SPEED_10;
				break;
			case SPEED_STAT_100M:
				link->speed = SWITCH_PORT_SPEED_100;
				break;
			case SPEED_STAT_1000M:
				link->speed = SWITCH_PORT_SPEED_1000;
				break;
			}
		}

		link->aneg = 1;
	} else {
		link->link = 0;
	}

	return 0;

}