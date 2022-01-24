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
struct TYPE_3__ {scalar_t__ token; } ;
typedef  TYPE_1__ datetkn ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 scalar_t__ TOKMAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC3(const char *tablename, const datetkn *base, int nel)
{
	bool		ok = true;
	int			i;

	for (i = 0; i < nel; i++)
	{
		/* check for token strings that don't fit */
		if (FUNC2(base[i].token) > TOKMAXLEN)
		{
			/* %.*s is safe since all our tokens are ASCII */
			FUNC0(LOG, "token too long in %s table: \"%.*s\"",
				 tablename,
				 TOKMAXLEN + 1, base[i].token);
			ok = false;
			break;				/* don't risk applying strcmp */
		}
		/* check for out of order */
		if (i > 0 &&
			FUNC1(base[i - 1].token, base[i].token) >= 0)
		{
			FUNC0(LOG, "ordering error in %s table: \"%s\" >= \"%s\"",
				 tablename,
				 base[i - 1].token,
				 base[i].token);
			ok = false;
		}
	}
	return ok;
}