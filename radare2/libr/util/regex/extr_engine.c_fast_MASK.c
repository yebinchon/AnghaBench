#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct match {scalar_t__ st; scalar_t__ fresh; scalar_t__ tmp; char* beginp; char* endp; int eflags; char* coldp; TYPE_1__* g; } ;
typedef  scalar_t__ states ;
typedef  int /*<<< orphan*/  sopno ;
struct TYPE_2__ {int cflags; int nbol; scalar_t__ neol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int BOL ; 
 int BOLEOL ; 
 int BOW ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int EOL ; 
 int EOW ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int NOTHING ; 
 char OUT ; 
 int R_REGEX_NEWLINE ; 
 int R_REGEX_NOTBOL ; 
 int R_REGEX_NOTEOL ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static char *			/* where tentative match ended, or NULL */
FUNC8(struct match *m, char *start, char *stop, sopno startst, sopno stopst)
{
	states st = m->st;
	states fresh = m->fresh;
	states tmp = m->tmp;
	char *p = start;
	int c = (start == m->beginp) ? OUT : *(start-1);
	int lastc;	/* previous c */
	int flagch;
	int i;
	char *coldp;	/* last p after which no match was underway */

	FUNC1(st);
	FUNC5(st, startst);
	st = FUNC7(m->g, startst, stopst, st, NOTHING, st);
	FUNC0(fresh, st);
	FUNC6("start", st, *p);
	coldp = NULL;
	for (;;) {
		/* next character */
		lastc = c;
		c = (p == m->endp) ? OUT : *p;
		if (st==fresh)
			coldp = p;

		/* is there an EOL and/or BOL between lastc and c? */
		flagch = '\0';
		i = 0;
		if ( (lastc == '\n' && m->g->cflags&R_REGEX_NEWLINE) ||
				(lastc == OUT && !(m->eflags&R_REGEX_NOTBOL)) ) {
			flagch = BOL;
			i = m->g->nbol;
		}
		if ( (c == '\n' && m->g->cflags&R_REGEX_NEWLINE) ||
				(c == OUT && !(m->eflags&R_REGEX_NOTEOL)) ) {
			flagch = (flagch == BOL) ? BOLEOL : EOL;
			i += m->g->neol;
		}
		if (i != 0) {
			for (; i > 0; i--)
				st = FUNC7(m->g, startst, stopst, st, flagch, st);
			FUNC6("boleol", st, c);
		}

		/* how about a word boundary? */
		if ( (flagch == BOL || (lastc != OUT && !FUNC4(lastc))) &&
					(c != OUT && FUNC4(c)) ) {
			flagch = BOW;
		}
		if ( (lastc != OUT && FUNC4(lastc)) &&
				(flagch == EOL || (c != OUT && !FUNC4(c))) ) {
			flagch = EOW;
		}
		if (flagch == BOW || flagch == EOW) {
			st = FUNC7(m->g, startst, stopst, st, flagch, st);
			FUNC6("boweow", st, c);
		}

		/* are we done? */
		if (FUNC3(st, stopst) || p == stop)
			break;		/* NOTE BREAK OUT */

		/* no, we must deal with this character */
		FUNC0(tmp, st);
		FUNC0(st, fresh);
		if (c == OUT) {
			break;
		}
		st = FUNC7(m->g, startst, stopst, tmp, c, st);
		FUNC6("aft", st, c);
		if (!FUNC2(FUNC7(m->g, startst, stopst, st, NOTHING, st), st)) {
			break;
		}
		p++;
	}

	if (coldp) {
		m->coldp = coldp;
		if (FUNC3(st, stopst))
			return(p+1);
	}
	return NULL;
}