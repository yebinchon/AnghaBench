#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int ports; } ;
struct ar8xxx_priv {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC2(struct ar8xxx_priv *priv, int port)
{
	int phy;
	u16 t;

	if (port >= priv->dev.ports)
		return 0;

	if (port == 0 || port == 6)
		return 0;

	phy = port - 1;

	/* EEE Ability Auto-negotiation Result */
	t = FUNC0(priv, phy, 0x7, 0x8000);

	return FUNC1(t);
}