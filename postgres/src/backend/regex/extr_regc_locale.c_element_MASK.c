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
struct vars {int dummy; } ;
struct cname {int /*<<< orphan*/  code; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  const chr ;

/* Variables and functions */
 int /*<<< orphan*/  const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ECOLLATE ; 
 int /*<<< orphan*/  REG_ULOCALE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct cname* cnames ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static chr
FUNC6(struct vars *v,			/* context */
		const chr *startp,		/* points to start of name */
		const chr *endp)		/* points just past end of name */
{
	const struct cname *cn;
	size_t		len;

	/* generic:  one-chr names stand for themselves */
	FUNC3(startp < endp);
	len = endp - startp;
	if (len == 1)
		return *startp;

	FUNC2(REG_ULOCALE);

	/* search table */
	for (cn = cnames; cn->name != NULL; cn++)
	{
		if (FUNC5(cn->name) == len &&
			FUNC4(cn->name, startp, len) == 0)
		{
			break;				/* NOTE BREAK OUT */
		}
	}
	if (cn->name != NULL)
		return FUNC0(cn->code);

	/* couldn't find it */
	FUNC1(REG_ECOLLATE);
	return 0;
}