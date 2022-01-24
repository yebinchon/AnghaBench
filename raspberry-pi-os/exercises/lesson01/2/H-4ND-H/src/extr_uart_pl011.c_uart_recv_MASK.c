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
 int /*<<< orphan*/  UART_DATA_REG ; 
 int /*<<< orphan*/  UART_FLAG_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

char FUNC1 ( void )
{
	while(1) {
		if(!(FUNC0(UART_FLAG_REG)&0x10)) 
			break;
	}
	return(FUNC0(UART_DATA_REG)&0xFF);
}