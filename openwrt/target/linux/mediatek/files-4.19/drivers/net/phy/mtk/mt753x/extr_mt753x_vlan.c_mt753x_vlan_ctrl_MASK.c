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
 int /*<<< orphan*/  VTCR ; 
 int VTCR_BUSY ; 
 int VTCR_FUNC_M ; 
 int VTCR_FUNC_S ; 
 int VTCR_VID_M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct gsw_mt753x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gsw_mt753x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void FUNC4(struct gsw_mt753x *gsw, u32 cmd, u32 val)
{
	int i;

	FUNC2(gsw, VTCR,
			 VTCR_BUSY | ((cmd << VTCR_FUNC_S) & VTCR_FUNC_M) |
			 (val & VTCR_VID_M));

	for (i = 0; i < 300; i++) {
		u32 val = FUNC1(gsw, VTCR);

		if ((val & VTCR_BUSY) == 0)
			break;

		FUNC3(1000, 1100);
	}

	if (i == 300)
		FUNC0(gsw->dev, "vtcr timeout\n");
}