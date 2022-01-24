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
typedef  char bits8 ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static bits8 *
FUNC4(char *str, int len)
{
	bits8	   *bits;
	int			off = 0;
	char		byte = 0;

	bits = FUNC3(len + 1);

	while (off < len)
	{
		if (off % 8 == 0)
			byte = 0;

		if ((str[off] == '0') || (str[off] == '1'))
			byte = byte | ((str[off] - '0') << off % 8);
		else
			FUNC0(ERROR,
					(FUNC1(ERRCODE_DATA_CORRUPTED),
					 FUNC2("illegal character '%c' in t_bits string", str[off])));

		if (off % 8 == 7)
			bits[off / 8] = byte;

		off++;
	}

	return bits;
}