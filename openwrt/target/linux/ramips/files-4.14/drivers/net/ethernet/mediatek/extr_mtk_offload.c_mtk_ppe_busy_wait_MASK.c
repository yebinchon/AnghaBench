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
struct mtk_eth {int /*<<< orphan*/  rst_ppe; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ HZ ; 
 int MTK_PPE_GLO_CFG_BUSY ; 
 int /*<<< orphan*/  MTK_REG_PPE_GLO_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int FUNC1 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct mtk_eth *eth)
{
	unsigned long t_start = jiffies;
	u32 r = 0;

	while (1) {
		r = FUNC1(eth, MTK_REG_PPE_GLO_CFG);
		if (!(r & MTK_PPE_GLO_CFG_BUSY))
			return 0;
		if (FUNC3(jiffies, t_start + HZ))
			break;
		FUNC4(10, 20);
	}

	FUNC0(eth->dev, "ppe: table busy timeout - resetting\n");
	FUNC2(eth->rst_ppe);

	return -ETIMEDOUT;
}