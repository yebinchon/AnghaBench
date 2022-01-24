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
typedef  int /*<<< orphan*/  DRV_USART_TRANSFER_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_USART_TRANSFER_STATUS_RECEIVER_DATA_PRESENT ; 
 int /*<<< orphan*/  DRV_USART_TRANSFER_STATUS_RECEIVER_EMPTY ; 
 int /*<<< orphan*/  DRV_USART_TRANSFER_STATUS_TRANSMIT_EMPTY ; 
 int /*<<< orphan*/  DRV_USART_TRANSFER_STATUS_TRANSMIT_FULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USART_ID_2 ; 

DRV_USART_TRANSFER_STATUS FUNC3( void )
{
    DRV_USART_TRANSFER_STATUS result = 0;

    /* Check if RX data available */
    if(FUNC0(USART_ID_2))
    {
        result|= DRV_USART_TRANSFER_STATUS_RECEIVER_DATA_PRESENT;
    }
    else
    {
        result|= DRV_USART_TRANSFER_STATUS_RECEIVER_EMPTY;
    }

    /* Check if TX Buffer is empty */
    if(FUNC2(USART_ID_2))
    {
        result|= DRV_USART_TRANSFER_STATUS_TRANSMIT_EMPTY;
    }

    /* Check if the TX buffer is full */
    if(FUNC1(USART_ID_2))
    {
        result|= DRV_USART_TRANSFER_STATUS_TRANSMIT_FULL;
    }

    return(result);
}