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
struct ar8xxx_priv {int dummy; } ;

/* Variables and functions */
 int AR8216_MIB_FUNC ; 
 int AR8216_MIB_FUNC_NO_OP ; 
 int AR8216_MIB_FUNC_S ; 
 int AR8216_REG_FLOOD_MASK ; 
 int /*<<< orphan*/  AR8216_REG_GLOBAL_CTRL ; 
 int /*<<< orphan*/  AR8216_REG_MIB_FUNC ; 
 int AR8236_MIB_EN ; 
 int AR8316_GCTRL_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct ar8xxx_priv *priv)
{
	/* standard atheros magic */
	FUNC1(priv, 0x38, 0xc000050e);

	/* enable cpu port to receive multicast and broadcast frames */
	FUNC1(priv, AR8216_REG_FLOOD_MASK, 0x003f003f);

	/* enable jumbo frames */
	FUNC0(priv, AR8216_REG_GLOBAL_CTRL,
		   AR8316_GCTRL_MTU, 9018 + 8 + 2);

	/* Enable MIB counters */
	FUNC0(priv, AR8216_REG_MIB_FUNC, AR8216_MIB_FUNC | AR8236_MIB_EN,
		   (AR8216_MIB_FUNC_NO_OP << AR8216_MIB_FUNC_S) |
		   AR8236_MIB_EN);
}