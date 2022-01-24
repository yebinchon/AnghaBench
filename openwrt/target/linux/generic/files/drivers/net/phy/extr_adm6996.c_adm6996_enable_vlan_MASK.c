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
typedef  int /*<<< orphan*/  u16 ;
struct adm6996_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM_IFNTE ; 
 int /*<<< orphan*/  ADM_IFNTE_MASK ; 
 int /*<<< orphan*/  ADM_NTTE ; 
 int /*<<< orphan*/  ADM_OTBE_MASK ; 
 int /*<<< orphan*/  ADM_OTBE_P2_PVID ; 
 int /*<<< orphan*/  ADM_RVID1 ; 
 int /*<<< orphan*/  ADM_SYSC0 ; 
 int /*<<< orphan*/  ADM_SYSC3 ; 
 int /*<<< orphan*/  ADM_TBV ; 
 int /*<<< orphan*/  ADM_VID_CHECK ; 
 int /*<<< orphan*/  ADM_VID_CHECK_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct adm6996_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adm6996_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct adm6996_priv *priv)
{
	u16 reg;

	reg = FUNC0(priv, ADM_OTBE_P2_PVID);
	reg &= ~(ADM_OTBE_MASK);
	FUNC1(priv, ADM_OTBE_P2_PVID, reg);
	reg = FUNC0(priv, ADM_IFNTE);
	reg &= ~(ADM_IFNTE_MASK);
	FUNC1(priv, ADM_IFNTE, reg);
	reg = FUNC0(priv, ADM_VID_CHECK);
	reg |= ADM_VID_CHECK_MASK;
	FUNC1(priv, ADM_VID_CHECK, reg);
	reg = FUNC0(priv, ADM_SYSC0);
	reg |= ADM_NTTE;
	reg &= ~(ADM_RVID1);
	FUNC1(priv, ADM_SYSC0, reg);
	reg = FUNC0(priv, ADM_SYSC3);
	reg |= ADM_TBV;
	FUNC1(priv, ADM_SYSC3, reg);
}