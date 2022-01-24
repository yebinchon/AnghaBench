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
 int /*<<< orphan*/  GPIO_LOW_TO_HIGH_TRANSITION ; 
 int /*<<< orphan*/  GPIO_PIN0 ; 
 int /*<<< orphan*/  GPIO_PIN1 ; 
 int GPIO_PIN5 ; 
 int GPIO_PIN6 ; 
 int /*<<< orphan*/  GPIO_PIN7 ; 
 int /*<<< orphan*/  GPIO_PORT_P1 ; 
 int /*<<< orphan*/  GPIO_PORT_P2 ; 
 int /*<<< orphan*/  GPIO_PORT_P3 ; 
 int /*<<< orphan*/  GPIO_PORT_P4 ; 
 int /*<<< orphan*/  GPIO_PRIMARY_MODULE_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(void)
{
    /* Configure EN & CS pins to disable CC3100 */
    FUNC2(GPIO_PORT_P3, GPIO_PIN0);
    FUNC2(GPIO_PORT_P4, GPIO_PIN1);
    FUNC5(GPIO_PORT_P3, GPIO_PIN0);
    FUNC6(GPIO_PORT_P4, GPIO_PIN1);

    /* Configure CLK, MOSI & MISO for SPI0 (EUSCI_B0) */
    FUNC4(GPIO_PORT_P1,
        GPIO_PIN5 | GPIO_PIN6, GPIO_PRIMARY_MODULE_FUNCTION);
    FUNC3(GPIO_PORT_P1, GPIO_PIN7,
        GPIO_PRIMARY_MODULE_FUNCTION);

    /* Configure IRQ pin */
    FUNC1(GPIO_PORT_P2, GPIO_PIN5);
    FUNC0(GPIO_PORT_P2, GPIO_PIN5,
        GPIO_LOW_TO_HIGH_TRANSITION);

    /* Initialize SPI and WiFi drivers */
    FUNC7();
    FUNC8();
    FUNC9();
}