#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* pgwstr; struct TYPE_5__* wstr; struct TYPE_5__* state; struct TYPE_5__* prev; } ;
typedef  TYPE_1__ TParserPosition ;
typedef  TYPE_1__ TParser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(TParser *prs)
{
	while (prs->state)
	{
		TParserPosition *ptr = prs->state->prev;

		FUNC1(prs->state);
		prs->state = ptr;
	}

	if (prs->wstr)
		FUNC1(prs->wstr);
	if (prs->pgwstr)
		FUNC1(prs->pgwstr);

#ifdef WPARSER_TRACE
	fprintf(stderr, "closing parser\n");
#endif
	FUNC1(prs);
}