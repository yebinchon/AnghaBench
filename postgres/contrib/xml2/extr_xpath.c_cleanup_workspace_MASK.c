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
struct TYPE_3__ {int /*<<< orphan*/ * doctree; int /*<<< orphan*/ * ctxt; int /*<<< orphan*/ * res; } ;
typedef  TYPE_1__ xpath_workspace ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(xpath_workspace *workspace)
{
	if (workspace->res)
		FUNC2(workspace->res);
	workspace->res = NULL;
	if (workspace->ctxt)
		FUNC1(workspace->ctxt);
	workspace->ctxt = NULL;
	if (workspace->doctree)
		FUNC0(workspace->doctree);
	workspace->doctree = NULL;
}