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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void FUNC4(char *array)
{
	char buf[2] = {0};
	while (1){
		for (int i = 0; i < 5; i++){
			buf[0] = array[i];
			FUNC0(buf);
			FUNC1(100000);
		}
		if(array[0] == 'a') {
		    //attempt accessing a system register
	    	    FUNC3("exception level is %d\n\r", FUNC2());
		}    
	}
}