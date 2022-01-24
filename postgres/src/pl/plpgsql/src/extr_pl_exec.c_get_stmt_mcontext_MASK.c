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
struct TYPE_3__ {int /*<<< orphan*/ * stmt_mcontext; int /*<<< orphan*/  stmt_mcontext_parent; } ;
typedef  TYPE_1__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/ * MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static MemoryContext
FUNC1(PLpgSQL_execstate *estate)
{
	if (estate->stmt_mcontext == NULL)
	{
		estate->stmt_mcontext =
			FUNC0(estate->stmt_mcontext_parent,
								  "PLpgSQL per-statement data",
								  ALLOCSET_DEFAULT_SIZES);
	}
	return estate->stmt_mcontext;
}