#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  location; int /*<<< orphan*/  number; } ;
struct TYPE_8__ {int /*<<< orphan*/ * (* p_paramref_hook ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef  TYPE_1__ ParseState ;
typedef  TYPE_2__ ParamRef ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_PARAMETER ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static Node *
FUNC5(ParseState *pstate, ParamRef *pref)
{
	Node	   *result;

	/*
	 * The core parser knows nothing about Params.  If a hook is supplied,
	 * call it.  If not, or if the hook returns NULL, throw a generic error.
	 */
	if (pstate->p_paramref_hook != NULL)
		result = pstate->p_paramref_hook(pstate, pref);
	else
		result = NULL;

	if (result == NULL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_UNDEFINED_PARAMETER),
				 FUNC2("there is no parameter $%d", pref->number),
				 FUNC3(pstate, pref->location)));

	return result;
}