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
struct ar8xxx_priv {struct ar8327_data* chip_data; } ;
struct ar8327_data {int port0_status; int port6_status; } ;

/* Variables and functions */
 int AR8216_PORT_CPU ; 
 int AR8216_PORT_STATE_FORWARD ; 
 int AR8216_PORT_STATUS_FLOW_CONTROL ; 
 int AR8216_PORT_STATUS_LINK_AUTO ; 
 int AR8327_PORT_LOOKUP_LEARN ; 
 int AR8327_PORT_LOOKUP_STATE_S ; 
 int AR8327_PORT_VLAN1_OUT_MODE_S ; 
 int AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(struct ar8xxx_priv *priv, int port)
{
	struct ar8327_data *data = priv->chip_data;
	u32 t;

	if (port == AR8216_PORT_CPU)
		t = data->port0_status;
	else if (port == 6)
		t = data->port6_status;
	else
		t = AR8216_PORT_STATUS_LINK_AUTO;

	if (port != AR8216_PORT_CPU && port != 6) {
		/*hw limitation:if configure mac when there is traffic,
		port MAC may work abnormal. Need disable lan&wan mac at fisrt*/
		FUNC5(priv, FUNC2(port), 0);
		FUNC6(100);
		t |= AR8216_PORT_STATUS_FLOW_CONTROL;
		FUNC5(priv, FUNC2(port), t);
	} else {
		FUNC5(priv, FUNC2(port), t);
	}

	FUNC5(priv, FUNC0(port), 0);

	FUNC5(priv, FUNC3(port), 0);

	t = AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH << AR8327_PORT_VLAN1_OUT_MODE_S;
	FUNC5(priv, FUNC4(port), t);

	t = AR8327_PORT_LOOKUP_LEARN;
	t |= AR8216_PORT_STATE_FORWARD << AR8327_PORT_LOOKUP_STATE_S;
	FUNC5(priv, FUNC1(port), t);
}