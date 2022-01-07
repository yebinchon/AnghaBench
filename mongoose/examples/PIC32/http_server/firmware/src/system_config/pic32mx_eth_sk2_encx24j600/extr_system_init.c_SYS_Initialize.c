
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tcpip; int sysTmr; int sysDebug; int sysConsole0; int drvUsart0; int drvTmr0; int spiObjectIdx0; int sysDevcon; } ;
typedef int SYS_MODULE_INIT ;


 int APP_Initialize () ;
 int BSP_Initialize () ;
 int DRV_SPI_INDEX_0 ;
 int DRV_SPI_INT_PRIORITY_IDX0 ;
 int DRV_SPI_INT_SUB_PRIORITY_IDX0 ;
 int DRV_SPI_INT_VECTOR_IDX0 ;
 int DRV_SPI_Initialize (int ,int const* const) ;
 int DRV_TMR_INDEX_0 ;
 int DRV_TMR_Initialize (int ,int *) ;
 int DRV_USART_INDEX_0 ;
 int DRV_USART_Initialize (int ,int *) ;
 int INT_PRIORITY_LEVEL1 ;
 int INT_PRIORITY_LEVEL5 ;
 int INT_SUBPRIORITY_LEVEL0 ;
 int INT_SUBPRIORITY_LEVEL3 ;
 int INT_VECTOR_ETH ;
 int INT_VECTOR_T1 ;
 int SYS_ASSERT (int,char*) ;
 int SYS_CLK_Initialize (int *) ;
 int SYS_CLK_SystemFrequencyGet () ;
 int SYS_CMD_Initialize (int *) ;
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
 scalar_t__ SYS_MODULE_OBJ_INVALID ;
 int SYS_PORTS_Initialize () ;
 int SYS_RANDOM_Initialize (int ,int ) ;
 int SYS_TMR_INDEX_0 ;
 int SYS_TMR_Initialize (int ,int const* const) ;
 scalar_t__ TCPIP_STACK_Init () ;
 int consUsartInit0 ;
 int debugInit ;
 int drvSpi0InitData ;
 int drvTmr0InitData ;
 int drvUsart0InitData ;
 int sysCmdInit ;
 int sysDevconInit ;
 TYPE_1__ sysObj ;
 int sysTmrInitData ;

void SYS_Initialize ( void* data )
{

    SYS_CLK_Initialize( ((void*)0) );
    sysObj.sysDevcon = SYS_DEVCON_Initialize(SYS_DEVCON_INDEX_0, (SYS_MODULE_INIT*)&sysDevconInit);
    SYS_DEVCON_PerformanceConfig(SYS_CLK_SystemFrequencyGet());
    SYS_DEVCON_JTAGDisable();
    SYS_PORTS_Initialize();

    BSP_Initialize();





    SYS_INT_VectorPrioritySet(DRV_SPI_INT_VECTOR_IDX0, DRV_SPI_INT_PRIORITY_IDX0);
    SYS_INT_VectorSubprioritySet(DRV_SPI_INT_VECTOR_IDX0, DRV_SPI_INT_SUB_PRIORITY_IDX0);
    sysObj.spiObjectIdx0 = DRV_SPI_Initialize(DRV_SPI_INDEX_0, (const SYS_MODULE_INIT * const)&drvSpi0InitData);

    sysObj.drvTmr0 = DRV_TMR_Initialize(DRV_TMR_INDEX_0, (SYS_MODULE_INIT *)&drvTmr0InitData);

    SYS_INT_VectorPrioritySet(INT_VECTOR_T1, INT_PRIORITY_LEVEL1);
    SYS_INT_VectorSubprioritySet(INT_VECTOR_T1, INT_SUBPRIORITY_LEVEL0);


     sysObj.drvUsart0 = DRV_USART_Initialize(DRV_USART_INDEX_0, (SYS_MODULE_INIT *)&drvUsart0InitData);




    SYS_CMD_Initialize((SYS_MODULE_INIT*)&sysCmdInit);
    sysObj.sysConsole0 = SYS_CONSOLE_Initialize(SYS_CONSOLE_INDEX_0, (SYS_MODULE_INIT *)&consUsartInit0);



    sysObj.sysDebug = SYS_DEBUG_Initialize(SYS_DEBUG_INDEX_0, (SYS_MODULE_INIT*)&debugInit);


    SYS_INT_Initialize();


    SYS_RANDOM_Initialize(0, 0);


    sysObj.sysTmr = SYS_TMR_Initialize(SYS_TMR_INDEX_0, (const SYS_MODULE_INIT * const)&sysTmrInitData);




    SYS_INT_VectorPrioritySet(INT_VECTOR_ETH, INT_PRIORITY_LEVEL5);


    SYS_INT_VectorSubprioritySet(INT_VECTOR_ETH, INT_SUBPRIORITY_LEVEL3);


    sysObj.tcpip = TCPIP_STACK_Init();
    SYS_ASSERT(sysObj.tcpip != SYS_MODULE_OBJ_INVALID, "TCPIP_STACK_Init Failed" );



    SYS_INT_Enable();


    APP_Initialize();
}
