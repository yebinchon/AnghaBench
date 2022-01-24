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
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(int dimension, const char* str, int** pos)
{
	int i = 0;

	FUNC0(*pos,0,sizeof(int)*dimension);
	while (*str != ']' && *str != '\0' && i < dimension) {
		if (*str >= '0' && *str <= '9') {
			(*pos)[i] = ((*pos)[i]*10)+(*str-'0');
		} else if (*str == ',') {
			i++;
		}
		str++;
	}
}