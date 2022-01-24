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
struct ar8xxx_priv {int dummy; } ;

/* Variables and functions */
 int AR8327_FRAME_ACK_CTRL_IGMP_JOIN ; 
 int AR8327_FRAME_ACK_CTRL_IGMP_LEAVE ; 
 int AR8327_FRAME_ACK_CTRL_IGMP_MLD ; 
 int FUNC0 (int) ; 
 int AR8327_FWD_CTRL1_IGMP_S ; 
 int AR8327_FWD_CTRL1_MC_FLOOD_S ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  AR8327_REG_FWD_CTRL1 ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ar8xxx_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ar8xxx_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC6(struct ar8xxx_priv *priv, int port, int enable)
{
	int reg_frame_ack = FUNC1(port);
	u32 val_frame_ack = (AR8327_FRAME_ACK_CTRL_IGMP_MLD |
			  AR8327_FRAME_ACK_CTRL_IGMP_JOIN |
			  AR8327_FRAME_ACK_CTRL_IGMP_LEAVE) <<
			 FUNC0(port);

	if (enable) {
		FUNC5(priv, AR8327_REG_FWD_CTRL1,
			   FUNC2(port) << AR8327_FWD_CTRL1_MC_FLOOD_S,
			   FUNC2(port) << AR8327_FWD_CTRL1_IGMP_S);
		FUNC4(priv, reg_frame_ack, val_frame_ack);
	} else {
		FUNC5(priv, AR8327_REG_FWD_CTRL1,
			   FUNC2(port) << AR8327_FWD_CTRL1_IGMP_S,
			   FUNC2(port) << AR8327_FWD_CTRL1_MC_FLOOD_S);
		FUNC3(priv, reg_frame_ack, val_frame_ack);
	}
}