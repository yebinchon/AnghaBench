#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct match {int /*<<< orphan*/  offp; TYPE_2__* pmatch; TYPE_1__* g; } ;
typedef  size_t sopno ;
struct TYPE_4__ {char* rm_so; char* rm_eo; } ;
struct TYPE_3__ {int nsub; int /*<<< orphan*/ * strip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,size_t,size_t) ; 
#define  OANY 147 
#define  OANYOF 146 
#define  OBACK_ 145 
#define  OBOL 144 
#define  OBOW 143 
#define  OCHAR 142 
#define  OCH_ 141 
#define  OEND 140 
#define  OEOL 139 
#define  OEOW 138 
#define  OLPAREN 137 
#define  OOR1 136 
#define  OOR2 135 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  OPLUS_ 134 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
#define  OQUEST_ 133 
#define  ORPAREN 132 
#define  O_BACK 131 
#define  O_CH 130 
#define  O_PLUS 129 
#define  O_QUEST 128 
 char* FUNC3 (struct match*,char*,char*,size_t,size_t) ; 

__attribute__((used)) static char *			/* == stop (success) always */
FUNC4(struct match *m, char *start, char *stop, sopno startst, sopno stopst)
{
	int i;
	sopno ss;	/* start sop of current subRE */
	sopno es;	/* end sop of current subRE */
	char *sp;	/* start of string matched by it */
	char *stp;	/* string matched by it cannot pass here */
	char *rest;	/* start of rest of string */
	char *tail;	/* string unmatched by rest of RE */
	sopno ssub;	/* start sop of subsubRE */
	sopno esub;	/* end sop of subsubRE */
	char *ssp;	/* start of string matched by subsubRE */
	char *sep;	/* end of string matched by subsubRE */
	char *oldssp;	/* previous ssp */
	char *dp;

	FUNC0("diss", start, stop, startst, stopst);
	sp = start;
	for (ss = startst; ss < stopst; ss = es) {
		/* identify end of subRE */
		es = ss;
		switch (FUNC1(m->g->strip[es])) {
		case OPLUS_:
		case OQUEST_:
			es += FUNC2(m->g->strip[es]);
			break;
		case OCH_:
			while (FUNC1(m->g->strip[es]) != O_CH)
				es += FUNC2(m->g->strip[es]);
			break;
		}
		es++;

		/* figure out what it matched */
		switch (FUNC1(m->g->strip[ss])) {
		case OEND:
			break;
		case OCHAR:
			sp++;
			break;
		case OBOL:
		case OEOL:
		case OBOW:
		case OEOW:
			break;
		case OANY:
		case OANYOF:
			sp++;
			break;
		case OBACK_:
		case O_BACK:
			break;
		/* cases where length of match is hard to find */
		case OQUEST_:
			stp = stop;
			for (;;) {
				/* how long could this one be? */
				rest = FUNC3(m, sp, stp, ss, es);
				if (rest) {	/* it did match */
					/* could the rest match the rest? */
					tail = FUNC3(m, rest, stop, es, stopst);
					if (tail == stop)
						break;		/* yes! */
					/* no -- try a shorter match for this one */
					stp = rest - 1;
				}
			}
			ssub = ss + 1;
			esub = es - 1;
			/* did innards match? */
			if (FUNC3(m, sp, rest, ssub, esub) != NULL) {
				dp = FUNC4(m, sp, rest, ssub, esub);
				if (dp != rest) return NULL;
			} else if (sp != rest) return NULL;
			sp = rest;
			break;
		case OPLUS_:
			stp = stop;
			for (;;) {
				/* how long could this one be? */
				rest = FUNC3(m, sp, stp, ss, es);
				if (rest != NULL) {	/* it did match */
					/* could the rest match the rest? */
					tail = FUNC3(m, rest, stop, es, stopst);
					if (tail == stop)
						break;		/* yes! */
					/* no -- try a shorter match for this one */
					stp = rest - 1;
				}
			}
			ssub = ss + 1;
			esub = es - 1;
			ssp = sp;
			oldssp = ssp;
			for (;;) {	/* find last match of innards */
				sep = FUNC3(m, ssp, rest, ssub, esub);
				if (!sep || sep == ssp)
					break;	/* failed or matched null */
				oldssp = ssp;	/* on to next try */
				ssp = sep;
			}
			if (!sep) {
				/* last successful match */
				sep = ssp;
				ssp = oldssp;
			}
			if (sep == rest) {	/* must exhaust substring */
				if (FUNC3(m, ssp, sep, ssub, esub) == rest) {
					dp = FUNC4(m, ssp, sep, ssub, esub);
					if (dp == sep) {
						sp = rest;
					}
				}
			}
			break;
		case OCH_:
			stp = stop;
			for (;;) {
				/* how long could this one be? */
				rest = FUNC3(m, sp, stp, ss, es);
				if (rest) {	/* it did match */
					/* could the rest match the rest? */
					tail = FUNC3(m, rest, stop, es, stopst);
					if (tail == stop)
						break;		/* yes! */
					/* no -- try a shorter match for this one */
					stp = rest - 1;
				}
			}
			ssub = ss + 1;
			esub = ss + FUNC2(m->g->strip[ss]) - 1;
			if (FUNC1(m->g->strip[esub]) != OOR1) {
				break;
			}
			for (;;) {	/* find first matching branch */
				if (FUNC3(m, sp, rest, ssub, esub) == rest)
					break;	/* it matched all of it */
				/* that one missed, try next one */
				if (FUNC1(m->g->strip[esub]) == OOR1) {
					esub++;
					if (FUNC1(m->g->strip[esub]) == OOR2) {
						ssub = esub + 1;
						esub += FUNC2(m->g->strip[esub]);
						if (FUNC1(m->g->strip[esub]) == OOR2) {
							esub--;
						} else {
							if (FUNC1(m->g->strip[esub]) != O_CH) {
								break;
							}
						}
					}
				}
			}
			dp = FUNC4(m, sp, rest, ssub, esub);
			if (dp == rest) {
				sp = rest;
			}
			break;
		case O_PLUS:
		case O_QUEST:
		case OOR1:
		case OOR2:
		case O_CH:
			break;
		case OLPAREN:
			i = FUNC2(m->g->strip[ss]);
			if (i > 0 && i <= m->g->nsub) {
				m->pmatch[i].rm_so = sp - m->offp;
			}
			break;
		case ORPAREN:
			i = FUNC2(m->g->strip[ss]);
			if (i > 0 && i <= m->g->nsub) {
				m->pmatch[i].rm_eo = sp - m->offp;
			}
			break;
		default:		/* uh oh */
			break;
		}
	}

	if (sp == stop) {
		return sp;
	} else {
		return NULL;
	}
}