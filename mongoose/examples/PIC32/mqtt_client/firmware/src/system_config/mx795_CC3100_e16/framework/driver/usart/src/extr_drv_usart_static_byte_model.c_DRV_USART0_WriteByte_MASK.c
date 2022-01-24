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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  INT_SOURCE_USART_2_TRANSMIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USART_ID_2 ; 

void FUNC3(const uint8_t byte)
{
    /* Wait till TX buffer is available as blocking operation is selected */
    while(FUNC0(USART_ID_2));
    /* Send one byte */
    FUNC1(USART_ID_2, byte);
    FUNC2(INT_SOURCE_USART_2_TRANSMIT);
}