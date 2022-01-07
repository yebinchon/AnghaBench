
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HwiP_Params ;
typedef int * HwiP_Handle ;


 int DebugP_log0 (char*) ;
 int HwiP_Params_init (int *) ;
 int * HwiP_create (int ,int ,int *) ;
 int INT_DMA_ERR ;
 int MAP_DMA_enableModule () ;
 int MAP_DMA_setControlBase (int ) ;
 int dmaControlTable ;
 int dmaErrorHwi ;
 int dmaInitialized ;

void MSP_EXP432P401R_initDMA(void)
{
    HwiP_Params hwiParams;
    HwiP_Handle dmaErrorHwiHandle;

    if (!dmaInitialized) {
        HwiP_Params_init(&hwiParams);
        dmaErrorHwiHandle = HwiP_create(INT_DMA_ERR, dmaErrorHwi, &hwiParams);
        if (dmaErrorHwiHandle == ((void*)0)) {
            DebugP_log0("Failed to create DMA error Hwi!!\n");
            while (1);
        }

        MAP_DMA_enableModule();
        MAP_DMA_setControlBase(dmaControlTable);

        dmaInitialized = 1;
    }
}
