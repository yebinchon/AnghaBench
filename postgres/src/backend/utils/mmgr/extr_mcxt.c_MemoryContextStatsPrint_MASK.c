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
struct TYPE_3__ {char* name; char* ident; } ;
typedef  TYPE_1__* MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(MemoryContext context, void *passthru,
						const char *stats_string)
{
	int			level = *(int *) passthru;
	const char *name = context->name;
	const char *ident = context->ident;
	int			i;

	/*
	 * It seems preferable to label dynahash contexts with just the hash table
	 * name.  Those are already unique enough, so the "dynahash" part isn't
	 * very helpful, and this way is more consistent with pre-v11 practice.
	 */
	if (ident && FUNC3(name, "dynahash") == 0)
	{
		name = ident;
		ident = NULL;
	}

	for (i = 0; i < level; i++)
		FUNC0(stderr, "  ");
	FUNC0(stderr, "%s: %s", name, stats_string);
	if (ident)
	{
		/*
		 * Some contexts may have very long identifiers (e.g., SQL queries).
		 * Arbitrarily truncate at 100 bytes, but be careful not to break
		 * multibyte characters.  Also, replace ASCII control characters, such
		 * as newlines, with spaces.
		 */
		int			idlen = FUNC4(ident);
		bool		truncated = false;

		if (idlen > 100)
		{
			idlen = FUNC2(ident, idlen, 100);
			truncated = true;
		}
		FUNC0(stderr, ": ");
		while (idlen-- > 0)
		{
			unsigned char c = *ident++;

			if (c < ' ')
				c = ' ';
			FUNC1(c, stderr);
		}
		if (truncated)
			FUNC0(stderr, "...");
	}
	FUNC1('\n', stderr);
}