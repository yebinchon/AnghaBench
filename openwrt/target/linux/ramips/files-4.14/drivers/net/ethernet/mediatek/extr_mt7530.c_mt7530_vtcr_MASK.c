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
struct mt7530_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_ESW_VLAN_VTCR ; 
 int FUNC1 (struct mt7530_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7530_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct mt7530_priv *priv, u32 cmd, u32 val)
{
	int i;

	FUNC2(priv, REG_ESW_VLAN_VTCR, FUNC0(31) | (cmd << 12) | val);

	for (i = 0; i < 20; i++) {
		u32 val = FUNC1(priv, REG_ESW_VLAN_VTCR);

		if ((val & FUNC0(31)) == 0)
			break;

		FUNC4(1000);
	}
	if (i == 20)
		FUNC3("mt7530: vtcr timeout\n");
}