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
typedef  int /*<<< orphan*/  BF_word ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*,int) ; 

char *
FUNC1(unsigned long count,
						   const char *input, int size, char *output, int output_size)
{
	if (size < 16 || output_size < 7 + 22 + 1 ||
		(count && (count < 4 || count > 31)))
	{
		if (output_size > 0)
			output[0] = '\0';
		return NULL;
	}

	if (!count)
		count = 5;

	output[0] = '$';
	output[1] = '2';
	output[2] = 'a';
	output[3] = '$';
	output[4] = '0' + count / 10;
	output[5] = '0' + count % 10;
	output[6] = '$';

	FUNC0(&output[7], (const BF_word *) input, 16);
	output[7 + 22] = '\0';

	return output;
}