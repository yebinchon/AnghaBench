#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vars {int err; scalar_t__ nmatch; TYPE_2__* pmatch; TYPE_1__* g; int /*<<< orphan*/ * stop; int /*<<< orphan*/ * search_start; } ;
struct dfa {int dummy; } ;
struct colormap {int dummy; } ;
struct cnfa {int dummy; } ;
typedef  int /*<<< orphan*/  chr ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {void* rm_eo; void* rm_so; } ;
struct TYPE_4__ {TYPE_3__* tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int REG_NOMATCH ; 
 int REG_OKAY ; 
 int SHORTER ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct vars*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct vars*,struct dfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC8 (struct vars*,struct dfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int
FUNC10(struct vars *v,
		  struct cnfa *cnfa,
		  struct colormap *cm,
		  struct dfa *d,
		  struct dfa *s,
		  chr **coldp)			/* where to put coldstart pointer */
{
	chr		   *begin;
	chr		   *end;
	chr		   *cold;
	chr		   *open;			/* open and close of range of possible starts */
	chr		   *close;
	chr		   *estart;
	chr		   *estop;
	int			er;
	int			shorter = v->g->tree->flags & SHORTER;
	int			hitend;

	FUNC5(d != NULL && s != NULL);
	cold = NULL;
	close = v->search_start;
	do
	{
		/* Search with the search RE for match range at/beyond "close" */
		FUNC3(("\ncsearch at %ld\n", FUNC2(close)));
		close = FUNC8(v, s, close, close, v->stop, &cold, (int *) NULL);
		if (FUNC1())
		{
			*coldp = cold;
			return v->err;
		}
		if (close == NULL)
			break;				/* no more possible match anywhere */
		FUNC5(cold != NULL);
		open = cold;
		cold = NULL;
		/* Search for matches starting between "open" and "close" inclusive */
		FUNC3(("cbetween %ld and %ld\n", FUNC2(open), FUNC2(close)));
		for (begin = open; begin <= close; begin++)
		{
			FUNC3(("\ncfind trying at %ld\n", FUNC2(begin)));
			estart = begin;
			estop = v->stop;
			for (;;)
			{
				/* Here we use the top node's detailed RE */
				if (shorter)
					end = FUNC8(v, d, begin, estart,
								   estop, (chr **) NULL, &hitend);
				else
					end = FUNC7(v, d, begin, estop,
								  &hitend);
				if (FUNC1())
				{
					*coldp = cold;
					return v->err;
				}
				if (hitend && cold == NULL)
					cold = begin;
				if (end == NULL)
					break;		/* no match with this begin point, try next */
				FUNC3(("tentative end %ld\n", FUNC2(end)));
				/* Dissect the potential match to see if it really matches */
				FUNC9(v->pmatch, v->nmatch);
				er = FUNC6(v, v->g->tree, begin, end);
				if (er == REG_OKAY)
				{
					if (v->nmatch > 0)
					{
						v->pmatch[0].rm_so = FUNC4(begin);
						v->pmatch[0].rm_eo = FUNC4(end);
					}
					*coldp = cold;
					return REG_OKAY;
				}
				if (er != REG_NOMATCH)
				{
					FUNC0(er);
					*coldp = cold;
					return er;
				}
				/* Try next longer/shorter match with same begin point */
				if (shorter)
				{
					if (end == estop)
						break;	/* no more, so try next begin point */
					estart = end + 1;
				}
				else
				{
					if (end == begin)
						break;	/* no more, so try next begin point */
					estop = end - 1;
				}
			}					/* end loop over endpoint positions */
		}						/* end loop over beginning positions */

		/*
		 * If we get here, there is no possible match starting at or before
		 * "close", so consider matches beyond that.  We'll do a fresh search
		 * with the search RE to find a new promising match range.
		 */
		close++;
	} while (close < v->stop);

	*coldp = cold;
	return REG_NOMATCH;
}