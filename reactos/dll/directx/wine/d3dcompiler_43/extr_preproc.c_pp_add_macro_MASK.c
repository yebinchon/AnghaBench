#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * mtext; } ;
struct TYPE_11__ {char* ident; int nargs; struct TYPE_11__* prev; struct TYPE_11__* next; int /*<<< orphan*/  linenumber; int /*<<< orphan*/  filename; TYPE_1__ subst; int /*<<< orphan*/ ** margs; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ pp_entry_t ;
typedef  int /*<<< orphan*/  mtext_t ;
typedef  int /*<<< orphan*/  marg_t ;
struct TYPE_13__ {TYPE_2__** defines; } ;
struct TYPE_12__ {char* input; int /*<<< orphan*/  line_number; scalar_t__ pedantic; } ;

/* Variables and functions */
 int /*<<< orphan*/  def_macro ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* pp_def_state ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_5__ pp_status ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 TYPE_2__* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

pp_entry_t *FUNC8(char *id, marg_t *args[], int nargs, mtext_t *exp)
{
	int idx;
	pp_entry_t *ppp;

	if(!id)
		return NULL;
	idx = FUNC5(id);
	if((ppp = FUNC6(id)) != NULL)
	{
		if(pp_status.pedantic)
			FUNC7("Redefinition of %s\n\tPrevious definition: %s:%d", id, ppp->filename, ppp->linenumber);
		FUNC2(id);
	}
	ppp = FUNC3(sizeof(pp_entry_t));
	if(!ppp)
		return NULL;
	FUNC1( ppp, 0, sizeof(*ppp) );
	ppp->ident	= id;
	ppp->type	= def_macro;
	ppp->margs	= args;
	ppp->nargs	= nargs;
	ppp->subst.mtext= exp;
	ppp->filename = FUNC4(pp_status.input ? pp_status.input : "<internal or cmdline>");
	if(!ppp->filename)
	{
		FUNC0(ppp);
		return NULL;
	}
	ppp->linenumber = pp_status.input ? pp_status.line_number : 0;
	ppp->next	= pp_def_state->defines[idx];
	pp_def_state->defines[idx] = ppp;
	if(ppp->next)
		ppp->next->prev = ppp;
	return ppp;
}