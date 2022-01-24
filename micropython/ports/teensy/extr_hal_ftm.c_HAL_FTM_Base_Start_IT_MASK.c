#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  State; TYPE_1__* Instance; } ;
struct TYPE_5__ {int SC; scalar_t__ CNT; } ;
typedef  TYPE_1__ FTM_TypeDef ;
typedef  TYPE_2__ FTM_HandleTypeDef ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FTM_SC_TOIE ; 
 int /*<<< orphan*/  HAL_FTM_STATE_BUSY ; 
 int /*<<< orphan*/  HAL_FTM_STATE_READY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(FTM_HandleTypeDef *hftm) {
    FTM_TypeDef *FTMx = hftm->Instance;
    FUNC2(FUNC1(FTMx));

    hftm->State = HAL_FTM_STATE_BUSY;

    FTMx->CNT = 0;
    FTMx->SC |= FUNC0(1) | FTM_SC_TOIE;

    hftm->State = HAL_FTM_STATE_READY;
}