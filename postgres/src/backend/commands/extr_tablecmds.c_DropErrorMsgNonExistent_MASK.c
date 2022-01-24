#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dropmsgstrings {char kind; char* nonexistent_msg; char* skipping_msg; int /*<<< orphan*/  nonexistent_code; } ;
struct TYPE_3__ {int /*<<< orphan*/ * relname; int /*<<< orphan*/ * schemaname; } ;
typedef  TYPE_1__ RangeVar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_SCHEMA ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dropmsgstrings* dropmsgstringarray ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(RangeVar *rel, char rightkind, bool missing_ok)
{
	const struct dropmsgstrings *rentry;

	if (rel->schemaname != NULL &&
		!FUNC2(FUNC1(rel->schemaname)))
	{
		if (!missing_ok)
		{
			FUNC3(ERROR,
					(FUNC4(ERRCODE_UNDEFINED_SCHEMA),
					 FUNC5("schema \"%s\" does not exist", rel->schemaname)));
		}
		else
		{
			FUNC3(NOTICE,
					(FUNC5("schema \"%s\" does not exist, skipping",
							rel->schemaname)));
		}
		return;
	}

	for (rentry = dropmsgstringarray; rentry->kind != '\0'; rentry++)
	{
		if (rentry->kind == rightkind)
		{
			if (!missing_ok)
			{
				FUNC3(ERROR,
						(FUNC4(rentry->nonexistent_code),
						 FUNC5(rentry->nonexistent_msg, rel->relname)));
			}
			else
			{
				FUNC3(NOTICE, (FUNC5(rentry->skipping_msg, rel->relname)));
				break;
			}
		}
	}

	FUNC0(rentry->kind != '\0');	/* Should be impossible */
}