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
struct TYPE_4__ {int /*<<< orphan*/  State; int /*<<< orphan*/  Instance; } ;
typedef  TYPE_1__ FTM_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  HAL_FTM_STATE_BUSY ; 
 int /*<<< orphan*/  HAL_FTM_STATE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(FTM_HandleTypeDef *hftm) {
    FUNC2(FUNC0(hftm->Instance));

    hftm->State = HAL_FTM_STATE_BUSY;

    FUNC1(hftm);

    hftm->State = HAL_FTM_STATE_RESET;
}