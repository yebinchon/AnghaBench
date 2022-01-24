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
typedef  int uint16 ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
#define  RDP_POINTER_CACHED 132 
#define  RDP_POINTER_COLOR 131 
#define  RDP_POINTER_MOVE 130 
#define  RDP_POINTER_NEW 129 
#define  RDP_POINTER_SYSTEM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void
FUNC9(STREAM s)
{
	uint16 message_type;
	uint16 x, y;

	FUNC0(s, message_type);
	FUNC1(s, 2);	/* pad */

	switch (message_type)
	{
		case RDP_POINTER_MOVE:
			FUNC0(s, x);
			FUNC0(s, y);
			if (FUNC6(s))
				FUNC7(x, y);
			break;

		case RDP_POINTER_COLOR:
			FUNC3(s);
			break;

		case RDP_POINTER_CACHED:
			FUNC2(s);
			break;

		case RDP_POINTER_SYSTEM:
			FUNC5(s);
			break;

		case RDP_POINTER_NEW:
			FUNC4(s);
			break;

		default:
			FUNC8("Pointer message 0x%x\n", message_type);
	}
}