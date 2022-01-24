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
struct gsw_mt753x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAC_DPX_STS ; 
 int MAC_LNK_STS ; 
#define  MAC_SPD_10 131 
#define  MAC_SPD_100 130 
#define  MAC_SPD_1000 129 
#define  MAC_SPD_2500 128 
 int MAC_SPD_STS_M ; 
 int MAC_SPD_STS_S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct gsw_mt753x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gsw_mt753x *gsw, u32 port)
{
	u32 pmsr, speed_bits;
	const char *speed;

	pmsr = FUNC2(gsw, FUNC0(port));

	speed_bits = (pmsr & MAC_SPD_STS_M) >> MAC_SPD_STS_S;

	switch (speed_bits) {
	case MAC_SPD_10:
		speed = "10Mbps";
		break;
	case MAC_SPD_100:
		speed = "100Mbps";
		break;
	case MAC_SPD_1000:
		speed = "1Gbps";
		break;
	case MAC_SPD_2500:
		speed = "2.5Gbps";
		break;
	}

	if (pmsr & MAC_LNK_STS) {
		FUNC1(gsw->dev, "Port %d Link is Up - %s/%s\n",
			 port, speed, (pmsr & MAC_DPX_STS) ? "Full" : "Half");
	} else {
		FUNC1(gsw->dev, "Port %d Link is Down\n", port);
	}
}