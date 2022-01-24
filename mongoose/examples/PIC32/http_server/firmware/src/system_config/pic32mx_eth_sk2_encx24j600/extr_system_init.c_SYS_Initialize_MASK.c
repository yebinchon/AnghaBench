#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tcpip; int /*<<< orphan*/  sysTmr; int /*<<< orphan*/  sysDebug; int /*<<< orphan*/  sysConsole0; int /*<<< orphan*/  drvUsart0; int /*<<< orphan*/  drvTmr0; int /*<<< orphan*/  spiObjectIdx0; int /*<<< orphan*/  sysDevcon; } ;
typedef  int /*<<< orphan*/  SYS_MODULE_INIT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DRV_SPI_INDEX_0 ; 
 int /*<<< orphan*/  DRV_SPI_INT_PRIORITY_IDX0 ; 
 int /*<<< orphan*/  DRV_SPI_INT_SUB_PRIORITY_IDX0 ; 
 int /*<<< orphan*/  DRV_SPI_INT_VECTOR_IDX0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  DRV_TMR_INDEX_0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DRV_USART_INDEX_0 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INT_PRIORITY_LEVEL1 ; 
 int /*<<< orphan*/  INT_PRIORITY_LEVEL5 ; 
 int /*<<< orphan*/  INT_SUBPRIORITY_LEVEL0 ; 
 int /*<<< orphan*/  INT_SUBPRIORITY_LEVEL3 ; 
 int /*<<< orphan*/  INT_VECTOR_ETH ; 
 int /*<<< orphan*/  INT_VECTOR_T1 ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_CONSOLE_INDEX_0 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_DEBUG_INDEX_0 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_DEVCON_INDEX_0 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SYS_MODULE_OBJ_INVALID ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_TMR_INDEX_0 ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/  const* const) ; 
 scalar_t__ FUNC21 () ; 
 int /*<<< orphan*/  consUsartInit0 ; 
 int /*<<< orphan*/  debugInit ; 
 int /*<<< orphan*/  drvSpi0InitData ; 
 int /*<<< orphan*/  drvTmr0InitData ; 
 int /*<<< orphan*/  drvUsart0InitData ; 
 int /*<<< orphan*/  sysCmdInit ; 
 int /*<<< orphan*/  sysDevconInit ; 
 TYPE_1__ sysObj ; 
 int /*<<< orphan*/  sysTmrInitData ; 

void FUNC22 ( void* data )
{
    /* Core Processor Initialization */
    FUNC6( NULL );
    sysObj.sysDevcon = FUNC11(SYS_DEVCON_INDEX_0, (SYS_MODULE_INIT*)&sysDevconInit);
    FUNC13(FUNC7());
    FUNC12();
    FUNC18();
    /* Board Support Package Initialization */
    FUNC1();

    /* Initialize Drivers */

    /*** SPI Driver Index 0 initialization***/

    FUNC16(DRV_SPI_INT_VECTOR_IDX0, DRV_SPI_INT_PRIORITY_IDX0);
    FUNC17(DRV_SPI_INT_VECTOR_IDX0, DRV_SPI_INT_SUB_PRIORITY_IDX0);
    sysObj.spiObjectIdx0 = FUNC2(DRV_SPI_INDEX_0, (const SYS_MODULE_INIT  * const)&drvSpi0InitData);

    sysObj.drvTmr0 = FUNC3(DRV_TMR_INDEX_0, (SYS_MODULE_INIT *)&drvTmr0InitData);

    FUNC16(INT_VECTOR_T1, INT_PRIORITY_LEVEL1);
    FUNC17(INT_VECTOR_T1, INT_SUBPRIORITY_LEVEL0);


     sysObj.drvUsart0 = FUNC4(DRV_USART_INDEX_0, (SYS_MODULE_INIT *)&drvUsart0InitData);

    /* Initialize System Services */

    /*** Command Service Initialization Code ***/
    FUNC8((SYS_MODULE_INIT*)&sysCmdInit);
    sysObj.sysConsole0 = FUNC9(SYS_CONSOLE_INDEX_0, (SYS_MODULE_INIT *)&consUsartInit0);


    /*** Debug Service Initialization Code ***/
    sysObj.sysDebug = FUNC10(SYS_DEBUG_INDEX_0, (SYS_MODULE_INIT*)&debugInit);

    /*** Interrupt Service Initialization Code ***/
    FUNC15();

    /*** Random Service Initialization Code ***/
    FUNC19(0, 0);

    /*** TMR Service Initialization Code ***/
    sysObj.sysTmr  = FUNC20(SYS_TMR_INDEX_0, (const SYS_MODULE_INIT  * const)&sysTmrInitData);

    /* Initialize Middleware */

    /* set priority for ETHERNET interrupt source */
    FUNC16(INT_VECTOR_ETH, INT_PRIORITY_LEVEL5);

    /* set sub-priority for ETHERNET interrupt source */
    FUNC17(INT_VECTOR_ETH, INT_SUBPRIORITY_LEVEL3);

    /* TCPIP Stack Initialization */
    sysObj.tcpip = FUNC21();
    FUNC5(sysObj.tcpip != SYS_MODULE_OBJ_INVALID, "TCPIP_STACK_Init Failed" );


    /* Enable Global Interrupts */
    FUNC14();

    /* Initialize the Application */
    FUNC0();
}