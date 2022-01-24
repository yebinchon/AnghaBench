#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_PHY_SIG_LOST ; 
 int ATM_PORT_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTP_CFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ g_atm_priv_data ; 
 scalar_t__ g_showtime ; 
 int /*<<< orphan*/ * g_xdata_addr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void)
{
	int port_num;

	if ( !g_showtime )
		return -1;

#if defined(CONFIG_VR9)
	IFX_REG_W32(0x00, UTP_CFG);
#endif

	for ( port_num = 0; port_num < ATM_PORT_NUMBER; port_num++ )
		FUNC1(g_atm_priv_data.port[port_num].dev, ATM_PHY_SIG_LOST);

	g_showtime = 0;
	g_xdata_addr = NULL;
	FUNC2("leave showtime\n");
	return 0;
}