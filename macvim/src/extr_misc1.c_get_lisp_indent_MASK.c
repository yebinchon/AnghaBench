#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int col; scalar_t__ lnum; } ;
typedef  TYPE_1__ pos_T ;
typedef  int colnr_T ;
typedef  char char_u ;
struct TYPE_7__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPO_LISP ; 
 char NUL ; 
 TYPE_5__* curwin ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,char**,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  p_cpo ; 
 scalar_t__ FUNC8 (char) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10()
{
    pos_T	*pos, realpos, paren;
    int		amount;
    char_u	*that;
    colnr_T	col;
    colnr_T	firsttry;
    int		parencount, quotecount;
    int		vi_lisp;

    /* Set vi_lisp to use the vi-compatible method */
    vi_lisp = (FUNC9(p_cpo, CPO_LISP) != NULL);

    realpos = curwin->w_cursor;
    curwin->w_cursor.col = 0;

    if ((pos = FUNC0(NULL, '(')) == NULL)
	pos = FUNC0(NULL, '[');
    else
    {
	paren = *pos;
	pos = FUNC0(NULL, '[');
	if (pos == NULL || FUNC6(pos, &paren))
	    pos = &paren;
    }
    if (pos != NULL)
    {
	/* Extra trick: Take the indent of the first previous non-white
	 * line that is at the same () level. */
	amount = -1;
	parencount = 0;

	while (--curwin->w_cursor.lnum >= pos->lnum)
	{
	    if (FUNC4(curwin->w_cursor.lnum))
		continue;
	    for (that = FUNC7(); *that != NUL; ++that)
	    {
		if (*that == ';')
		{
		    while (*(that + 1) != NUL)
			++that;
		    continue;
		}
		if (*that == '\\')
		{
		    if (*(that + 1) != NUL)
			++that;
		    continue;
		}
		if (*that == '"' && *(that + 1) != NUL)
		{
		    while (*++that && *that != '"')
		    {
			/* skipping escaped characters in the string */
			if (*that == '\\')
			{
			    if (*++that == NUL)
				break;
			    if (that[1] == NUL)
			    {
				++that;
				break;
			    }
			}
		    }
		}
		if (*that == '(' || *that == '[')
		    ++parencount;
		else if (*that == ')' || *that == ']')
		    --parencount;
	    }
	    if (parencount == 0)
	    {
		amount = FUNC1();
		break;
	    }
	}

	if (amount == -1)
	{
	    curwin->w_cursor.lnum = pos->lnum;
	    curwin->w_cursor.col = pos->col;
	    col = pos->col;

	    that = FUNC7();

	    if (vi_lisp && FUNC1() == 0)
		amount = 2;
	    else
	    {
		char_u *line = that;

		amount = 0;
		while (*that && col)
		{
		    amount += FUNC3(line, &that, (colnr_T)amount);
		    col--;
		}

		/*
		 * Some keywords require "body" indenting rules (the
		 * non-standard-lisp ones are Scheme special forms):
		 *
		 * (let ((a 1))    instead    (let ((a 1))
		 *   (...))	      of	   (...))
		 */

		if (!vi_lisp && (*that == '(' || *that == '[')
						      && FUNC5(that + 1))
		    amount += 2;
		else
		{
		    that++;
		    amount++;
		    firsttry = amount;

		    while (FUNC8(*that))
		    {
			amount += FUNC2(line, that, (colnr_T)amount);
			++that;
		    }

		    if (*that && *that != ';') /* not a comment line */
		    {
			/* test *that != '(' to accommodate first let/do
			 * argument if it is more than one line */
			if (!vi_lisp && *that != '(' && *that != '[')
			    firsttry++;

			parencount = 0;
			quotecount = 0;

			if (vi_lisp
				|| (*that != '"'
				    && *that != '\''
				    && *that != '#'
				    && (*that < '0' || *that > '9')))
			{
			    while (*that
				    && (!FUNC8(*that)
					|| quotecount
					|| parencount)
				    && (!((*that == '(' || *that == '[')
					    && !quotecount
					    && !parencount
					    && vi_lisp)))
			    {
				if (*that == '"')
				    quotecount = !quotecount;
				if ((*that == '(' || *that == '[')
							       && !quotecount)
				    ++parencount;
				if ((*that == ')' || *that == ']')
							       && !quotecount)
				    --parencount;
				if (*that == '\\' && *(that+1) != NUL)
				    amount += FUNC3(
						line, &that, (colnr_T)amount);
				amount += FUNC3(
						line, &that, (colnr_T)amount);
			    }
			}
			while (FUNC8(*that))
			{
			    amount += FUNC2(
						 line, that, (colnr_T)amount);
			    that++;
			}
			if (!*that || *that == ';')
			    amount = firsttry;
		    }
		}
	    }
	}
    }
    else
	amount = 0;	/* no matching '(' or '[' found, use zero indent */

    curwin->w_cursor = realpos;

    return amount;
}