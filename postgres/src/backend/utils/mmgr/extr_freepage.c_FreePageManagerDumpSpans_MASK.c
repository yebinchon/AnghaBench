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
struct TYPE_5__ {int /*<<< orphan*/  next; int /*<<< orphan*/  npages; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_1__ FreePageSpanLeader ;
typedef  int /*<<< orphan*/  FreePageManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(FreePageManager *fpm, FreePageSpanLeader *span,
						 Size expected_pages, StringInfo buf)
{
	char	   *base = FUNC3(fpm);

	while (span != NULL)
	{
		if (span->npages != expected_pages)
			FUNC0(buf, " %zu(%zu)", FUNC2(base, span),
							 span->npages);
		else
			FUNC0(buf, " %zu", FUNC2(base, span));
		span = FUNC4(base, span->next);
	}

	FUNC1(buf, '\n');
}