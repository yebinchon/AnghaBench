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
 int FUNC0 (char const*,int) ; 
 char FUNC1 (char const) ; 

__attribute__((used)) static bool FUNC2(char const*str)
{
	if ( !str) {
		return false;
	}

	if (str[0] == '@' ) {
		return FUNC0 (str, 4) == 3
			&& FUNC1 (str[1]) == 'r'
			&& (str[2] == '0' || str[2] == '1');
	}

	if (str[0] == '[' ) {
		return FUNC0 (str, 5) == 4
			&& FUNC1 (str[1]) == 'r'
			&& (str[2] == '0' || str[2] == '1')
			&& str[3] == ']';
	}

	return false;
}