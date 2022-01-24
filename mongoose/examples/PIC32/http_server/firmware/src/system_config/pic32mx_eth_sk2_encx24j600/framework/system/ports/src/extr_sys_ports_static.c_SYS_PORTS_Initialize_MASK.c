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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORTS_ID_0 ; 
 int /*<<< orphan*/  PORTS_PIN_MODE_DIGITAL ; 
 int /*<<< orphan*/  PORT_CHANNEL_A ; 
 int /*<<< orphan*/  PORT_CHANNEL_B ; 
 int /*<<< orphan*/  SYS_PORT_AD1PCFG ; 
 int /*<<< orphan*/  SYS_PORT_A_LAT ; 
 int /*<<< orphan*/  SYS_PORT_A_ODC ; 
 int SYS_PORT_A_TRIS ; 
 int /*<<< orphan*/  SYS_PORT_B_LAT ; 
 int /*<<< orphan*/  SYS_PORT_B_ODC ; 
 int SYS_PORT_B_TRIS ; 
 int /*<<< orphan*/  SYS_PORT_CNEN ; 
 int /*<<< orphan*/  SYS_PORT_CNPUE ; 

void FUNC7(void)
{
    /* AN and CN Pins Initialization */
    FUNC0(PORTS_ID_0, SYS_PORT_AD1PCFG, PORTS_PIN_MODE_DIGITAL);
    FUNC3(PORTS_ID_0, SYS_PORT_CNPUE);
    FUNC2(PORTS_ID_0, SYS_PORT_CNEN);
    FUNC1(PORTS_ID_0);


    /* PORT A Initialization */
    FUNC5(PORTS_ID_0, PORT_CHANNEL_A, SYS_PORT_A_ODC);
    FUNC6( PORTS_ID_0, PORT_CHANNEL_A,  SYS_PORT_A_LAT);
	FUNC4( PORTS_ID_0, PORT_CHANNEL_A,  SYS_PORT_A_TRIS ^ 0xFFFF);

    /* PORT B Initialization */
    FUNC5(PORTS_ID_0, PORT_CHANNEL_B, SYS_PORT_B_ODC);
    FUNC6( PORTS_ID_0, PORT_CHANNEL_B,  SYS_PORT_B_LAT);
	FUNC4( PORTS_ID_0, PORT_CHANNEL_B,  SYS_PORT_B_TRIS ^ 0xFFFF);

}