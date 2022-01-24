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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  SYS_MODULE_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_BUS_PERIPHERAL_1 ; 
 int /*<<< orphan*/  DRV_USART_INDEX_0 ; 
 int /*<<< orphan*/  DRV_USART_LINE_CONTROL_8NONE1 ; 
 int /*<<< orphan*/  INT_SOURCE_USART_2_ERROR ; 
 int /*<<< orphan*/  INT_SOURCE_USART_2_RECEIVE ; 
 int /*<<< orphan*/  INT_SOURCE_USART_2_TRANSMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USART_ENABLE_TX_RX_USED ; 
 int /*<<< orphan*/  USART_ID_2 ; 
 int /*<<< orphan*/  USART_RECEIVE_FIFO_ONE_CHAR ; 
 int /*<<< orphan*/  USART_TRANSMIT_FIFO_IDLE ; 

SYS_MODULE_OBJ FUNC8(void)
{
    uint32_t clockSource;

    /* Disable the USART module to configure it*/
    FUNC1 (USART_ID_2);

    /* Initialize the USART based on configuration settings */
    FUNC2(USART_ID_2,
            false,  /*Auto baud*/
            false,  /*LoopBack mode*/
            false,  /*Auto wakeup on start*/
            false,  /*IRDA mode*/
            false);  /*Stop In Idle mode*/

    /* Set the line control mode */
    FUNC4(USART_ID_2, DRV_USART_LINE_CONTROL_8NONE1);

    /* We set the receive interrupt mode to receive an interrupt whenever FIFO
       is not empty */
    FUNC3(USART_ID_2,
            USART_RECEIVE_FIFO_ONE_CHAR,
            USART_TRANSMIT_FIFO_IDLE,
            USART_ENABLE_TX_RX_USED);

    /* Get the USART clock source value*/
    clockSource = FUNC5 ( CLK_BUS_PERIPHERAL_1 );

    /* Set the baud rate and enable the USART */
    FUNC0(USART_ID_2,
            clockSource,
            115200);  /*Desired Baud rate value*/

    /* Clear the interrupts to be on the safer side*/
    FUNC7(INT_SOURCE_USART_2_TRANSMIT);
    FUNC7(INT_SOURCE_USART_2_RECEIVE);
    FUNC7(INT_SOURCE_USART_2_ERROR);

    /* Enable the error interrupt source */
    FUNC6(INT_SOURCE_USART_2_ERROR);

    /* Enable the Receive interrupt source */
    FUNC6(INT_SOURCE_USART_2_RECEIVE);

    /* Return the driver instance value*/
    return (SYS_MODULE_OBJ)DRV_USART_INDEX_0;
}