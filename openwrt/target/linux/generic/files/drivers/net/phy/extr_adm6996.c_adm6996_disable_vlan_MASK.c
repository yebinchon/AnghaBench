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
typedef  int u16 ;
struct adm6996_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM_IFNTE ; 
 int ADM_IFNTE_MASK ; 
 int ADM_NTTE ; 
 int ADM_NUM_VLANS ; 
 int ADM_OTBE_MASK ; 
 int /*<<< orphan*/  ADM_OTBE_P2_PVID ; 
 int ADM_RVID1 ; 
 int /*<<< orphan*/  ADM_SYSC0 ; 
 int /*<<< orphan*/  ADM_SYSC3 ; 
 int ADM_TBV ; 
 int /*<<< orphan*/  ADM_VID_CHECK ; 
 int ADM_VID_CHECK_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ADM_VLAN_FILT_MEMBER_MASK ; 
 int ADM_VLAN_FILT_VALID ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct adm6996_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adm6996_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct adm6996_priv *priv)
{
	u16 reg;
	int i;

	for (i = 0; i < ADM_NUM_VLANS; i++) {
		reg = ADM_VLAN_FILT_MEMBER_MASK;
		FUNC4(priv, FUNC1(i), reg);
		reg = ADM_VLAN_FILT_VALID | FUNC2(1);
		FUNC4(priv, FUNC0(i), reg);
	}

	reg = FUNC3(priv, ADM_OTBE_P2_PVID);
	reg |= ADM_OTBE_MASK;
	FUNC4(priv, ADM_OTBE_P2_PVID, reg);
	reg = FUNC3(priv, ADM_IFNTE);
	reg |= ADM_IFNTE_MASK;
	FUNC4(priv, ADM_IFNTE, reg);
	reg = FUNC3(priv, ADM_VID_CHECK);
	reg &= ~(ADM_VID_CHECK_MASK);
	FUNC4(priv, ADM_VID_CHECK, reg);
	reg = FUNC3(priv, ADM_SYSC0);
	reg &= ~(ADM_NTTE);
	reg |= ADM_RVID1;
	FUNC4(priv, ADM_SYSC0, reg);
	reg = FUNC3(priv, ADM_SYSC3);
	reg &= ~(ADM_TBV);
	FUNC4(priv, ADM_SYSC3, reg);
}