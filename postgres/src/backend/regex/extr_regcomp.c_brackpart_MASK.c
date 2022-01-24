#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vars {int nexttype; scalar_t__ nextvalue; scalar_t__* now; int cflags; } ;
struct state {int dummy; } ;
struct cvec {int dummy; } ;
typedef  scalar_t__ chr ;

/* Variables and functions */
#define  CCLASS 132 
#define  COLLEL 131 
#define  ECLASS 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  PLAIN 129 
#define  RANGE 128 
 int /*<<< orphan*/  REG_ASSERT ; 
 int /*<<< orphan*/  REG_ECOLLATE ; 
 int /*<<< orphan*/  REG_ECTYPE ; 
 int /*<<< orphan*/  REG_ERANGE ; 
 int REG_ICASE ; 
 int /*<<< orphan*/  REG_UUNPORT ; 
 scalar_t__ FUNC5 (int const) ; 
 struct cvec* FUNC6 (struct vars*,scalar_t__ const*,scalar_t__ const*,int) ; 
 struct cvec* FUNC7 (struct vars*,scalar_t__,int) ; 
 scalar_t__ FUNC8 (struct vars*,scalar_t__ const*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC9 (struct vars*,scalar_t__,struct state*,struct state*) ; 
 struct cvec* FUNC10 (struct vars*,scalar_t__,scalar_t__,int) ; 
 scalar_t__* FUNC11 (struct vars*) ; 
 int /*<<< orphan*/  FUNC12 (struct vars*,struct cvec*,struct state*,struct state*) ; 

__attribute__((used)) static void
FUNC13(struct vars *v,
		  struct state *lp,
		  struct state *rp)
{
	chr			startc;
	chr			endc;
	struct cvec *cv;
	const chr  *startp;
	const chr  *endp;
	chr			c[1];

	/* parse something, get rid of special cases, take shortcuts */
	switch (v->nexttype)
	{
		case RANGE:				/* a-b-c or other botch */
			FUNC0(REG_ERANGE);
			return;
			break;
		case PLAIN:
			c[0] = v->nextvalue;
			FUNC2();
			/* shortcut for ordinary chr (not range) */
			if (!FUNC5(RANGE))
			{
				FUNC9(v, c[0], lp, rp);
				return;
			}
			startc = FUNC8(v, c, c + 1);
			FUNC3();
			break;
		case COLLEL:
			startp = v->now;
			endp = FUNC11(v);
			FUNC1(startp < endp, REG_ECOLLATE);
			FUNC3();
			startc = FUNC8(v, startp, endp);
			FUNC3();
			break;
		case ECLASS:
			startp = v->now;
			endp = FUNC11(v);
			FUNC1(startp < endp, REG_ECOLLATE);
			FUNC3();
			startc = FUNC8(v, startp, endp);
			FUNC3();
			cv = FUNC7(v, startc, (v->cflags & REG_ICASE));
			FUNC3();
			FUNC12(v, cv, lp, rp);
			return;
			break;
		case CCLASS:
			startp = v->now;
			endp = FUNC11(v);
			FUNC1(startp < endp, REG_ECTYPE);
			FUNC3();
			cv = FUNC6(v, startp, endp, (v->cflags & REG_ICASE));
			FUNC3();
			FUNC12(v, cv, lp, rp);
			return;
			break;
		default:
			FUNC0(REG_ASSERT);
			return;
			break;
	}

	if (FUNC5(RANGE))
	{
		FUNC2();
		switch (v->nexttype)
		{
			case PLAIN:
			case RANGE:
				c[0] = v->nextvalue;
				FUNC2();
				endc = FUNC8(v, c, c + 1);
				FUNC3();
				break;
			case COLLEL:
				startp = v->now;
				endp = FUNC11(v);
				FUNC1(startp < endp, REG_ECOLLATE);
				FUNC3();
				endc = FUNC8(v, startp, endp);
				FUNC3();
				break;
			default:
				FUNC0(REG_ERANGE);
				return;
				break;
		}
	}
	else
		endc = startc;

	/*
	 * Ranges are unportable.  Actually, standard C does guarantee that digits
	 * are contiguous, but making that an exception is just too complicated.
	 */
	if (startc != endc)
		FUNC4(REG_UUNPORT);
	cv = FUNC10(v, startc, endc, (v->cflags & REG_ICASE));
	FUNC3();
	FUNC12(v, cv, lp, rp);
}