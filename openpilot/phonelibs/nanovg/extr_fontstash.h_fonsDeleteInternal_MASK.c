#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  userPtr; int /*<<< orphan*/  (* renderDelete ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int nfonts; struct TYPE_7__* scratch; struct TYPE_7__* texData; struct TYPE_7__* fonts; scalar_t__ atlas; TYPE_1__ params; } ;
typedef  TYPE_2__ FONScontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(FONScontext* stash)
{
	int i;
	if (stash == NULL) return;

	if (stash->params.renderDelete)
		stash->params.renderDelete(stash->params.userPtr);

	for (i = 0; i < stash->nfonts; ++i)
		FUNC1(stash->fonts[i]);

	if (stash->atlas) FUNC0(stash->atlas);
	if (stash->fonts) FUNC2(stash->fonts);
	if (stash->texData) FUNC2(stash->texData);
	if (stash->scratch) FUNC2(stash->scratch);
	FUNC2(stash);
}