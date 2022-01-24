#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* decimal_point; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static inline void FUNC2(char *str)
{
	const char *point;
	char *pos;

	point = FUNC0()->decimal_point;
	if (*point == '.') {
		/* No conversion needed */
		return;
	}

	pos = FUNC1(str, '.');
	if (pos)
		*pos = *point;
}