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
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

RD_BOOL
FUNC2(STREAM s, int *tagval, int *decoded_len)
{
	FUNC1(s, *tagval);
	FUNC1(s, *decoded_len);

	if (*decoded_len < 0x80)
		return True;
	else if (*decoded_len == 0x81)
	{
		FUNC1(s, *decoded_len);
		return True;
	}
	else if (*decoded_len == 0x82)
	{
		FUNC0(s, *decoded_len);
		return True;
	}

	return False;
}