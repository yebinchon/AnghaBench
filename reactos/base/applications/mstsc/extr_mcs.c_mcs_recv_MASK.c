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
typedef  int uint8 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/ * STREAM ;

/* Variables and functions */
 int MCS_DPUM ; 
 int MCS_SDIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int*) ; 

STREAM
FUNC5(uint16 * channel, uint8 * rdpver)
{
	uint8 opcode, appid, length;
	STREAM s;

	s = FUNC4(rdpver);
	if (s == NULL)
		return NULL;
	if (rdpver != NULL)
		if (*rdpver != 3)
			return s;
	FUNC2(s, opcode);
	appid = opcode >> 2;
	if (appid != MCS_SDIN)
	{
		if (appid != MCS_DPUM)
		{
			FUNC0("expected data, got %d\n", opcode);
		}
		return NULL;
	}
	FUNC3(s, 2);	/* userid */
	FUNC1(s, *channel);
	FUNC3(s, 1);	/* flags */
	FUNC2(s, length);
	if (length & 0x80)
		FUNC3(s, 1);	/* second byte of length */
	return s;
}