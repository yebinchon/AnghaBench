#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* relname; void* schemaname; void* catalogname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

RangeVar *
FUNC10(List *names)
{
	RangeVar   *rel = FUNC8(NULL, NULL, -1);

	switch (FUNC5(names))
	{
		case 1:
			rel->relname = FUNC9(FUNC4(names));
			break;
		case 2:
			rel->schemaname = FUNC9(FUNC4(names));
			rel->relname = FUNC9(FUNC6(names));
			break;
		case 3:
			rel->catalogname = FUNC9(FUNC4(names));
			rel->schemaname = FUNC9(FUNC6(names));
			rel->relname = FUNC9(FUNC7(names));
			break;
		default:
			FUNC1(ERROR,
					(FUNC2(ERRCODE_SYNTAX_ERROR),
					 FUNC3("improper relation name (too many dotted names): %s",
							FUNC0(names))));
			break;
	}

	return rel;
}