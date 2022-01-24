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

/* Variables and functions */
 int /*<<< orphan*/  INT_ID_0 ; 
 int /*<<< orphan*/  INT_PRIORITY_LEVEL2 ; 
 int /*<<< orphan*/  INT_SOURCE_CHANGE_NOTICE ; 
 int /*<<< orphan*/  INT_SUBPRIORITY_LEVEL0 ; 
 int /*<<< orphan*/  INT_VECTOR_CN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORTS_ID_0 ; 
 int /*<<< orphan*/  PORTS_PIN_MODE_DIGITAL ; 
 int /*<<< orphan*/  PORT_CHANNEL_D ; 
 int /*<<< orphan*/  SYS_PORT_AD1PCFG ; 
 int /*<<< orphan*/  SYS_PORT_CNEN ; 
 int /*<<< orphan*/  SYS_PORT_CNPUE ; 
 int /*<<< orphan*/  SYS_PORT_D_LAT ; 
 int /*<<< orphan*/  SYS_PORT_D_ODC ; 
 int SYS_PORT_D_TRIS ; 

void FUNC12(void)
{
    /* AN and CN Pins Initialization */
    FUNC4(PORTS_ID_0, SYS_PORT_AD1PCFG, PORTS_PIN_MODE_DIGITAL);
    FUNC7(PORTS_ID_0, SYS_PORT_CNPUE);
    FUNC6(PORTS_ID_0, SYS_PORT_CNEN);
    FUNC5(PORTS_ID_0);

    FUNC10(PORTS_ID_0, PORT_CHANNEL_D);    
    FUNC1(INT_ID_0, INT_SOURCE_CHANGE_NOTICE);         
    FUNC0(INT_ID_0, INT_SOURCE_CHANGE_NOTICE);
    FUNC2(INT_ID_0, INT_VECTOR_CN, INT_PRIORITY_LEVEL2);
    FUNC3(INT_ID_0, INT_VECTOR_CN, INT_SUBPRIORITY_LEVEL0);          
    
    
    /* PORT D Initialization */
    FUNC9(PORTS_ID_0, PORT_CHANNEL_D, SYS_PORT_D_ODC);
    FUNC11( PORTS_ID_0, PORT_CHANNEL_D,  SYS_PORT_D_LAT);
	FUNC8( PORTS_ID_0, PORT_CHANNEL_D,  SYS_PORT_D_TRIS ^ 0xFFFF);
    
}