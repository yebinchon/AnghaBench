
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebugP_log0 (char*) ;
 int DebugP_log1 (char*,int ) ;
 int MAP_DMA_clearErrorStatus () ;
 int MAP_DMA_getErrorStatus () ;

__attribute__((used)) static void dmaErrorHwi(uintptr_t arg)
{
    DebugP_log1("DMA error code: %d\n", MAP_DMA_getErrorStatus());
    MAP_DMA_clearErrorStatus();
    DebugP_log0("DMA error!!\n");
    while(1);
}
