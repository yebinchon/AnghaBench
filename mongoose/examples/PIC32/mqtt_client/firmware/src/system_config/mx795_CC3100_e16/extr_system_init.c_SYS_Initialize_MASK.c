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
struct TYPE_2__ {int /*<<< orphan*/  sysDebug; int /*<<< orphan*/  sysConsole0; int /*<<< orphan*/  drvUsart0; int /*<<< orphan*/  spiObjectIdx0; int /*<<< orphan*/  sysDevcon; } ;
typedef  int /*<<< orphan*/  SYS_MODULE_INIT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DRV_SPI_INDEX_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  DRV_USART_INDEX_0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INT_PRIORITY_LEVEL3 ; 
 int /*<<< orphan*/  INT_SUBPRIORITY_LEVEL0 ; 
 int /*<<< orphan*/  INT_VECTOR_UART2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  SYS_CONSOLE_INDEX_0 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_DEBUG_INDEX_0 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_DEVCON_INDEX_0 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  debugInit ; 
 int /*<<< orphan*/  sysDevconInit ; 
 TYPE_1__ sysObj ; 

void FUNC16 ( void* data )
{
    /* Core Processor Initialization */
    FUNC4( NULL );
    sysObj.sysDevcon = FUNC8(SYS_DEVCON_INDEX_0, (SYS_MODULE_INIT*)&sysDevconInit);
    FUNC10(FUNC5());
    FUNC9();
    FUNC15();

    /* Initialize Drivers */

    /*** SPI Driver Index 0 initialization***/

    sysObj.spiObjectIdx0 = FUNC2(DRV_SPI_INDEX_0, (const SYS_MODULE_INIT  * const)NULL);
    /* RTCC Initialization Call */
    FUNC1();

    sysObj.drvUsart0 = FUNC3(DRV_USART_INDEX_0, (SYS_MODULE_INIT *)NULL);
    FUNC13(INT_VECTOR_UART2, INT_PRIORITY_LEVEL3);
    FUNC14(INT_VECTOR_UART2, INT_SUBPRIORITY_LEVEL0);

    /* Initialize System Services */
    sysObj.sysConsole0 = FUNC6(SYS_CONSOLE_INDEX_0, NULL);


    /*** Debug Service Initialization Code ***/
    sysObj.sysDebug = FUNC7(SYS_DEBUG_INDEX_0, (SYS_MODULE_INIT*)&debugInit);

    /*** Interrupt Service Initialization Code ***/
    FUNC12();
  
    /* Initialize Middleware */

    /* Enable Global Interrupts */
    FUNC11();

    /* Initialize the Application */
    FUNC0();
}