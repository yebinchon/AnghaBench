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
struct statement {struct statement* oldlocale; scalar_t__ clocale; struct statement* name; struct statement* command; int /*<<< orphan*/  outlist; int /*<<< orphan*/  inlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct statement*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct statement *stmt)
{
	if (stmt == NULL)
		return;
	FUNC1(stmt->inlist);
	FUNC1(stmt->outlist);
	FUNC0(stmt->command);
	FUNC0(stmt->name);
#ifdef HAVE_USELOCALE
	if (stmt->clocale)
		freelocale(stmt->clocale);
#else
	FUNC0(stmt->oldlocale);
#endif
	FUNC0(stmt);
}