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
 int /*<<< orphan*/  FUNC0 (char* const,char*,int) ; 

__attribute__((used)) static inline int
FUNC1(char *const result, const bool sign, const bool exponent, const bool mantissa)
{
	if (mantissa)
	{
		FUNC0(result, "NaN", 3);
		return 3;
	}
	if (sign)
	{
		result[0] = '-';
	}
	if (exponent)
	{
		FUNC0(result + sign, "Infinity", 8);
		return sign + 8;
	}
	result[sign] = '0';
	return sign + 1;
}