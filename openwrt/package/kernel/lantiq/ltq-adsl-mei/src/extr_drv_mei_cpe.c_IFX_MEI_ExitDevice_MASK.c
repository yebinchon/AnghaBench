#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * nIrq; } ;
typedef  TYPE_1__ DSL_DEV_Device_t ;

/* Variables and functions */
 int EIO ; 
 size_t IFX_DFEIR ; 
 size_t IFX_DYING_GASP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* dsl_devices ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC2 (int num)
{
	DSL_DEV_Device_t *pDev;
	pDev = &dsl_devices[num];

	if (pDev == NULL)
		return -EIO;

	FUNC0 (pDev->nIrq[IFX_DFEIR]);
	FUNC0 (pDev->nIrq[IFX_DYING_GASP]);

	FUNC1(pDev->nIrq[IFX_DFEIR], pDev);
	FUNC1(pDev->nIrq[IFX_DYING_GASP], pDev);

	return 0;
}