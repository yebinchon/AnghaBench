#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {scalar_t__ CounterMode; int /*<<< orphan*/  PrescalerShift; int /*<<< orphan*/  Period; } ;
struct TYPE_8__ {int /*<<< orphan*/  State; TYPE_1__ Init; TYPE_2__* Instance; } ;
struct TYPE_7__ {int /*<<< orphan*/  SC; int /*<<< orphan*/  MOD; int /*<<< orphan*/  MODE; } ;
typedef  TYPE_2__ FTM_TypeDef ;
typedef  TYPE_3__ FTM_HandleTypeDef ;

/* Variables and functions */
 scalar_t__ FTM_COUNTERMODE_CENTER ; 
 int /*<<< orphan*/  FTM_MODE_WPDIS ; 
 int /*<<< orphan*/  FTM_SC_CPWMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HAL_FTM_STATE_BUSY ; 
 int /*<<< orphan*/  HAL_FTM_STATE_READY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(FTM_HandleTypeDef *hftm) {
    /* Check the parameters */
    FTM_TypeDef *FTMx = hftm->Instance;
    FUNC5(FUNC2(FTMx));
    FUNC5(FUNC4(hftm->Init.PrescalerShift));
    FUNC5(FUNC1(hftm->Init.CounterMode));
    FUNC5(FUNC3(hftm->Init.Period));

    hftm->State = HAL_FTM_STATE_BUSY;

    FTMx->MODE = FTM_MODE_WPDIS;
    FTMx->SC = 0;
    FTMx->MOD = hftm->Init.Period;
    uint32_t sc = FUNC0(hftm->Init.PrescalerShift);
    if (hftm->Init.CounterMode == FTM_COUNTERMODE_CENTER) {
      sc |= FTM_SC_CPWMS;
    }
    FTMx->SC = sc;

    hftm->State = HAL_FTM_STATE_READY;
}