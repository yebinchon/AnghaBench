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
 int /*<<< orphan*/  COMMERROR ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char) ; 
 char FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reply_message ; 

__attribute__((used)) static void
FUNC7(void)
{
	char		msgtype;

	/*
	 * Check message type from the first byte.
	 */
	msgtype = FUNC5(&reply_message);

	switch (msgtype)
	{
		case 'r':
			FUNC1();
			break;

		case 'h':
			FUNC0();
			break;

		default:
			FUNC2(COMMERROR,
					(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC4("unexpected message type \"%c\"", msgtype)));
			FUNC6(0);
	}
}