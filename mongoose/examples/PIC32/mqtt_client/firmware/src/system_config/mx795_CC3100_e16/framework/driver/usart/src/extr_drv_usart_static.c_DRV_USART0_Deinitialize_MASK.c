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
 int /*<<< orphan*/  INT_SOURCE_USART_2_ERROR ; 
 int /*<<< orphan*/  INT_SOURCE_USART_2_RECEIVE ; 
 int /*<<< orphan*/  INT_SOURCE_USART_2_TRANSMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USART_ID_2 ; 

void  FUNC2(void)
{
    bool status;

    /* Disable the interrupts */
    status = FUNC1(INT_SOURCE_USART_2_TRANSMIT) ;
    status = FUNC1(INT_SOURCE_USART_2_RECEIVE) ;
    status = FUNC1(INT_SOURCE_USART_2_ERROR);
    /* Ignore the warning */
    (void)status;

    /* Disable USART module */
    FUNC0 (USART_ID_2);

}