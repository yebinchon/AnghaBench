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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void)
{   
	FUNC2(115200);
	while (1) {
	    //check_begin 
		
		char *starth="start";
		FUNC1(starth,5);
		uint32_t size = FUNC3();
		size|=FUNC3()<<8;
		size|=FUNC3()<<16;
		size|=FUNC3()<<24;
		
		FUNC4((size>>24)&0xff);
		FUNC4((size>>16)&0xff);
		FUNC4((size>>8)&0xff);
		FUNC4(size&0xff);
				
		uint8_t * kernel = (uint8_t *)0x0;
		while(size-- >0)
		{
			*kernel++ = FUNC3();
		}		    
    	FUNC0(0);    
	}
	return ;
}