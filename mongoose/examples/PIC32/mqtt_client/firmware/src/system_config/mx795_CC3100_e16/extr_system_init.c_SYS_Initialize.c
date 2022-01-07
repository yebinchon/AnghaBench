
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysDebug; int sysConsole0; int drvUsart0; int spiObjectIdx0; int sysDevcon; } ;
typedef int SYS_MODULE_INIT ;


 int APP_Initialize () ;
 int DRV_RTCC_Initialize () ;
 int DRV_SPI_INDEX_0 ;
 int DRV_SPI_Initialize (int ,int const* const) ;
 int DRV_USART_INDEX_0 ;
 int DRV_USART_Initialize (int ,int *) ;
 int INT_PRIORITY_LEVEL3 ;
 int INT_SUBPRIORITY_LEVEL0 ;
 int INT_VECTOR_UART2 ;
 int SYS_CLK_Initialize (int *) ;
 int SYS_CLK_SystemFrequencyGet () ;
 int SYS_CONSOLE_INDEX_0 ;
 int SYS_CONSOLE_Initialize (int ,int *) ;
 int SYS_DEBUG_INDEX_0 ;
 int SYS_DEBUG_Initialize (int ,int *) ;
 int SYS_DEVCON_INDEX_0 ;
 int SYS_DEVCON_Initialize (int ,int *) ;
 int SYS_DEVCON_JTAGDisable () ;
 int SYS_DEVCON_PerformanceConfig (int ) ;
 int SYS_INT_Enable () ;
 int SYS_INT_Initialize () ;
 int SYS_INT_VectorPrioritySet (int ,int ) ;
 int SYS_INT_VectorSubprioritySet (int ,int ) ;
 int SYS_PORTS_Initialize () ;
 int debugInit ;
 int sysDevconInit ;
 TYPE_1__ sysObj ;

void SYS_Initialize ( void* data )
{

    SYS_CLK_Initialize( ((void*)0) );
    sysObj.sysDevcon = SYS_DEVCON_Initialize(SYS_DEVCON_INDEX_0, (SYS_MODULE_INIT*)&sysDevconInit);
    SYS_DEVCON_PerformanceConfig(SYS_CLK_SystemFrequencyGet());
    SYS_DEVCON_JTAGDisable();
    SYS_PORTS_Initialize();





    sysObj.spiObjectIdx0 = DRV_SPI_Initialize(DRV_SPI_INDEX_0, (const SYS_MODULE_INIT * const)((void*)0));

    DRV_RTCC_Initialize();

    sysObj.drvUsart0 = DRV_USART_Initialize(DRV_USART_INDEX_0, (SYS_MODULE_INIT *)((void*)0));
    SYS_INT_VectorPrioritySet(INT_VECTOR_UART2, INT_PRIORITY_LEVEL3);
    SYS_INT_VectorSubprioritySet(INT_VECTOR_UART2, INT_SUBPRIORITY_LEVEL0);


    sysObj.sysConsole0 = SYS_CONSOLE_Initialize(SYS_CONSOLE_INDEX_0, ((void*)0));



    sysObj.sysDebug = SYS_DEBUG_Initialize(SYS_DEBUG_INDEX_0, (SYS_MODULE_INIT*)&debugInit);


    SYS_INT_Initialize();




    SYS_INT_Enable();


    APP_Initialize();
}
