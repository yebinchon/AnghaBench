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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int is_uart_inited ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(int corenum)
{
    if(0==corenum)
    {
        FUNC1(115200);
        is_uart_inited = true;
        //output something to make sure only init uart once
        FUNC3(corenum+'0');
        FUNC4("\r\n");
    }
    while(!is_uart_inited);    //wait uart init OK
    FUNC0(corenum*200000);     //I find the origin delay cannot use 0 as parameter, so I make some change to delay function 
    FUNC4("Hello, world! From processor <");
    FUNC3(corenum+'0');
    FUNC4(">\r\n");

    if(0==corenum)
    {
        while (1) {
            FUNC3(FUNC2());
        }

    }
    else
    {
        while(1);
    }
}