#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* mtext; } ;
struct TYPE_11__ {scalar_t__ type; scalar_t__ expanding; int nargs; TYPE_1__ subst; } ;
typedef  TYPE_2__ pp_entry_t ;
struct TYPE_12__ {struct TYPE_12__* next; } ;
typedef  TYPE_3__ mtext_t ;
struct TYPE_13__ {int nargs; scalar_t__* nnls; TYPE_2__* ppp; } ;
typedef  TYPE_4__ macexpstackentry_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_3__* FUNC1 (TYPE_3__*,TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int curdef_idx ; 
 char* curdef_text ; 
 scalar_t__ def_macro ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(macexpstackentry_t *mep)
{
	mtext_t *mtp;
	int n, k;
	char *cptr;
	int nnl = 0;
	pp_entry_t *ppp = mep->ppp;
	int nargs = mep->nargs;

	FUNC3(ppp->type == def_macro);
	FUNC3(ppp->expanding == 0);

	if((ppp->nargs >= 0 && nargs != ppp->nargs) || (ppp->nargs < 0 && nargs < -ppp->nargs))
	{
		FUNC5("Too %s macro arguments (%d)", nargs < FUNC0(ppp->nargs) ? "few" : "many", nargs);
		return;
	}

	for(n = 0; n < nargs; n++)
		nnl += mep->nnls[n];

	curdef_idx = 0;

	for(mtp = ppp->subst.mtext; mtp; mtp = mtp->next)
	{
		if(!(mtp = FUNC1(mtp, mep, &nnl)))
			break;
	}

	for(n = 0; n < nnl; n++)
		FUNC2("\n", 1);

	/* To make sure there is room and termination (see below) */
	FUNC2(" \0", 2);

	/* Strip trailing whitespace from expansion */
	for(k = curdef_idx, cptr = &curdef_text[curdef_idx-1]; k > 0; k--, cptr--)
	{
		if(!FUNC4(*cptr & 0xff))
			break;
	}

	/*
	 * We must add *one* whitespace to make sure that there
	 * is a token-separation after the expansion.
	 */
	*(++cptr) = ' ';
	*(++cptr) = '\0';
	k++;

	/* Strip leading whitespace from expansion */
	for(n = 0, cptr = curdef_text; n < k; n++, cptr++)
	{
		if(!FUNC4(*cptr & 0xff))
			break;
	}

	if(k - n > 0)
	{
		FUNC6(ppp, NULL, NULL, 0);
		/*yy_scan_bytes(curdef_text + n, k - n);*/
		FUNC7(curdef_text + n);
	}
}