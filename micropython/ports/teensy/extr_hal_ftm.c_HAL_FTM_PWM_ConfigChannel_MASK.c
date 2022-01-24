#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  State; TYPE_2__* Instance; } ;
struct TYPE_10__ {int OCPolarity; int /*<<< orphan*/  Pulse; int /*<<< orphan*/  OCMode; } ;
struct TYPE_9__ {int POL; TYPE_1__* channel; } ;
struct TYPE_8__ {int /*<<< orphan*/  CV; int /*<<< orphan*/  CSC; } ;
typedef  TYPE_2__ FTM_TypeDef ;
typedef  TYPE_3__ FTM_OC_InitTypeDef ;
typedef  TYPE_4__ FTM_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  HAL_FTM_STATE_BUSY ; 
 int /*<<< orphan*/  HAL_FTM_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(FTM_HandleTypeDef *hftm, FTM_OC_InitTypeDef* sConfig, uint32_t channel) {
    FTM_TypeDef *FTMx = hftm->Instance;
    FUNC5(FUNC1(FTMx));
    FUNC5(FUNC0(channel));
    FUNC5(FUNC4(sConfig->OCMode));
    FUNC5(FUNC3(sConfig->Pulse));
    FUNC5(FUNC2(sConfig->OCPolarity));

    hftm->State = HAL_FTM_STATE_BUSY;

    FTMx->channel[channel].CSC = sConfig->OCMode;
    FTMx->channel[channel].CV  = sConfig->Pulse;
    if (sConfig->OCPolarity & 1) {
      FTMx->POL |= (1 << channel); 
    } else {
      FTMx->POL &= ~(1 << channel); 
    }

    hftm->State = HAL_FTM_STATE_READY;
}