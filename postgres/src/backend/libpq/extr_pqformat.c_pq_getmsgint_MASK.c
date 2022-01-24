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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

unsigned int
FUNC4(StringInfo msg, int b)
{
	unsigned int result;
	unsigned char n8;
	uint16		n16;
	uint32		n32;

	switch (b)
	{
		case 1:
			FUNC3(msg, (char *) &n8, 1);
			result = n8;
			break;
		case 2:
			FUNC3(msg, (char *) &n16, 2);
			result = FUNC1(n16);
			break;
		case 4:
			FUNC3(msg, (char *) &n32, 4);
			result = FUNC2(n32);
			break;
		default:
			FUNC0(ERROR, "unsupported integer size %d", b);
			result = 0;			/* keep compiler quiet */
			break;
	}
	return result;
}