#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; int meta; } ;
struct TYPE_4__ {int /*<<< orphan*/  desc; TYPE_2__** commands; } ;
typedef  TYPE_1__ ParsedScript ;
typedef  int /*<<< orphan*/  ConditionalStack ;
typedef  TYPE_2__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  IFSTATE_ELSE_FALSE ; 
 int /*<<< orphan*/  IFSTATE_FALSE ; 
 scalar_t__ META_COMMAND ; 
#define  META_ELIF 131 
#define  META_ELSE 130 
#define  META_ENDIF 129 
#define  META_IF 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(ParsedScript ps)
{
	/* statically check conditional structure */
	ConditionalStack cs = FUNC1();
	int			i;

	for (i = 0; ps.commands[i] != NULL; i++)
	{
		Command    *cmd = ps.commands[i];

		if (cmd->type == META_COMMAND)
		{
			switch (cmd->meta)
			{
				case META_IF:
					FUNC7(cs, IFSTATE_FALSE);
					break;
				case META_ELIF:
					if (FUNC3(cs))
						FUNC0(ps.desc, i + 1, "\\elif without matching \\if");
					if (FUNC4(cs) == IFSTATE_ELSE_FALSE)
						FUNC0(ps.desc, i + 1, "\\elif after \\else");
					break;
				case META_ELSE:
					if (FUNC3(cs))
						FUNC0(ps.desc, i + 1, "\\else without matching \\if");
					if (FUNC4(cs) == IFSTATE_ELSE_FALSE)
						FUNC0(ps.desc, i + 1, "\\else after \\else");
					FUNC5(cs, IFSTATE_ELSE_FALSE);
					break;
				case META_ENDIF:
					if (!FUNC6(cs))
						FUNC0(ps.desc, i + 1, "\\endif without matching \\if");
					break;
				default:
					/* ignore anything else... */
					break;
			}
		}
	}
	if (!FUNC3(cs))
		FUNC0(ps.desc, i + 1, "\\if without matching \\endif");
	FUNC2(cs);
}