#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* numParams; int /*<<< orphan*/ ** paramTypes; } ;
typedef  TYPE_1__ VarParamState ;
struct TYPE_6__ {int /*<<< orphan*/  p_coerce_param_hook; int /*<<< orphan*/  p_paramref_hook; void* p_ref_hook_state; } ;
typedef  TYPE_2__ ParseState ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  variable_coerce_param_hook ; 
 int /*<<< orphan*/  variable_paramref_hook ; 

void
FUNC1(ParseState *pstate,
						  Oid **paramTypes, int *numParams)
{
	VarParamState *parstate = FUNC0(sizeof(VarParamState));

	parstate->paramTypes = paramTypes;
	parstate->numParams = numParams;
	pstate->p_ref_hook_state = (void *) parstate;
	pstate->p_paramref_hook = variable_paramref_hook;
	pstate->p_coerce_param_hook = variable_coerce_param_hook;
}