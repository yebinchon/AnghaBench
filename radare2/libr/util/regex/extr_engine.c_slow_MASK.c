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
struct match {char* beginp; char* endp; int eflags; TYPE_1__* g; int /*<<< orphan*/  tmp; int /*<<< orphan*/  empty; int /*<<< orphan*/  st; } ;
typedef  int /*<<< orphan*/  states ;
typedef  int /*<<< orphan*/  sopno ;
struct TYPE_2__ {int cflags; int nbol; scalar_t__ neol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BOL ; 
 int BOLEOL ; 
 int BOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EOL ; 
 int EOW ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int NOTHING ; 
 char OUT ; 
 int R_REGEX_NEWLINE ; 
 int R_REGEX_NOTBOL ; 
 int R_REGEX_NOTEOL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *			/* where it ended */
FUNC9(struct match *m, char *start, char *stop, sopno startst, sopno stopst)
{
	states st = m->st;
	states empty = m->empty;
	states tmp = m->tmp;
	char *p = start;
	int c = (start == m->beginp) ? OUT : *(start-1);
	int lastc;	/* previous c */
	int flagch;
	int i;
	char *matchp;	/* last p at which a match ended */

	FUNC1("slow", start, stop, startst, stopst);
	FUNC2(st);
	FUNC6(st, startst);
	FUNC7("sstart", st, *p);
	st = FUNC8(m->g, startst, stopst, st, NOTHING, st);
	matchp = NULL;
	for (;;) {
		/* next character */
		lastc = c;
		c = (p == m->endp) ? OUT : *p;

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
				st = FUNC8(m->g, startst, stopst, st, flagch, st);
			FUNC7("sboleol", st, c);
		}

		/* how about a word boundary? */
		if ( (flagch == BOL || (lastc != OUT && !FUNC5(lastc))) &&
					(c != OUT && FUNC5(c)) ) {
			flagch = BOW;
		}
		if ( (lastc != OUT && FUNC5(lastc)) &&
				(flagch == EOL || (c != OUT && !FUNC5(c))) ) {
			flagch = EOW;
		}
		if (flagch == BOW || flagch == EOW) {
			st = FUNC8(m->g, startst, stopst, st, flagch, st);
			FUNC7("sboweow", st, c);
		}

		/* are we done? */
		if (FUNC4(st, stopst))
			matchp = p;
		if (FUNC3(st, empty) || p == stop)
			break;		/* NOTE BREAK OUT */

		/* no, we must deal with this character */
		FUNC0(tmp, st);
		FUNC0(st, empty);
		if (c == OUT) {
			break;
		}
		st = FUNC8(m->g, startst, stopst, tmp, c, st);
		FUNC7("saft", st, c);
		if (!FUNC3(FUNC8(m->g, startst, stopst, st, NOTHING, st), st)) {
			break;
		}
		p++;
	}

	return(matchp);
}