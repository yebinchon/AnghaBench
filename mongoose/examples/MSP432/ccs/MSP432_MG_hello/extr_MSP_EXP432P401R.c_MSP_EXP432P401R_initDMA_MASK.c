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
typedef  int /*<<< orphan*/  HwiP_Params ;
typedef  int /*<<< orphan*/ * HwiP_Handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INT_DMA_ERR ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmaControlTable ; 
 int /*<<< orphan*/  dmaErrorHwi ; 
 int dmaInitialized ; 

void FUNC5(void)
{
    HwiP_Params hwiParams;
    HwiP_Handle dmaErrorHwiHandle;

    if (!dmaInitialized) {
        FUNC1(&hwiParams);
        dmaErrorHwiHandle = FUNC2(INT_DMA_ERR, dmaErrorHwi, &hwiParams);
        if (dmaErrorHwiHandle == NULL) {
            FUNC0("Failed to create DMA error Hwi!!\n");
            while (1);
        }

        FUNC3();
        FUNC4(dmaControlTable);

        dmaInitialized = true;
    }
}