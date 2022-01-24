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
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(char *array)
{
	char buf[2] = {0};
	long priority = 1;
	while (1){
		if(array[0] == '1') {
			FUNC0(++priority);
		}

		for (int j = 0; j < 4; j++) {
			for (int i = 0; i < 5; i++){
				buf[0] = array[i];
				FUNC1(buf);
				FUNC2(100000);
			}
		}
	}
}