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
typedef  size_t uint32_t ;
struct TYPE_8__ {TYPE_2__* Instance; } ;
struct TYPE_7__ {TYPE_1__* channel; } ;
struct TYPE_6__ {int /*<<< orphan*/  CSC; } ;
typedef  TYPE_2__ FTM_TypeDef ;
typedef  TYPE_3__ FTM_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FTM_CSC_CHIE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(FTM_HandleTypeDef *hftm, uint32_t channel) {
    FTM_TypeDef *FTMx = hftm->Instance;
    FUNC1(FUNC0(FTMx));

    FTMx->channel[channel].CSC |= FTM_CSC_CHIE;
}