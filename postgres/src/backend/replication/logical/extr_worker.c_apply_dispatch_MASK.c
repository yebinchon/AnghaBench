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
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char) ; 
 char FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(StringInfo s)
{
	char		action = FUNC12(s);

	switch (action)
	{
			/* BEGIN */
		case 'B':
			FUNC0(s);
			break;
			/* COMMIT */
		case 'C':
			FUNC1(s);
			break;
			/* INSERT */
		case 'I':
			FUNC3(s);
			break;
			/* UPDATE */
		case 'U':
			FUNC8(s);
			break;
			/* DELETE */
		case 'D':
			FUNC2(s);
			break;
			/* TRUNCATE */
		case 'T':
			FUNC6(s);
			break;
			/* RELATION */
		case 'R':
			FUNC5(s);
			break;
			/* TYPE */
		case 'Y':
			FUNC7(s);
			break;
			/* ORIGIN */
		case 'O':
			FUNC4(s);
			break;
		default:
			FUNC9(ERROR,
					(FUNC10(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC11("invalid logical replication message type \"%c\"", action)));
	}
}