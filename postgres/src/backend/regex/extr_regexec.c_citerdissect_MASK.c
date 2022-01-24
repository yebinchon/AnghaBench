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
struct vars {int err; } ;
struct subre {char op; int min; size_t max; int /*<<< orphan*/  id; TYPE_2__* left; } ;
struct dfa {int dummy; } ;
typedef  int /*<<< orphan*/  chr ;
struct TYPE_5__ {scalar_t__ nstates; } ;
struct TYPE_6__ {int flags; TYPE_1__ cnfa; } ;

/* Variables and functions */
 size_t DUPINF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int REG_ESPACE ; 
 int REG_NOMATCH ; 
 int REG_OKAY ; 
 int SHORTER ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct vars*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dfa* FUNC7 (struct vars*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (struct vars*,struct dfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct vars*,TYPE_2__*) ; 

__attribute__((used)) static int						/* regexec return code */
FUNC10(struct vars *v,
			 struct subre *t,
			 chr *begin,		/* beginning of relevant substring */
			 chr *end)			/* end of same */
{
	struct dfa *d;
	chr		  **endpts;
	chr		   *limit;
	int			min_matches;
	size_t		max_matches;
	int			nverified;
	int			k;
	int			i;
	int			er;

	FUNC5(t->op == '*');
	FUNC5(t->left != NULL && t->left->cnfa.nstates > 0);
	FUNC5(!(t->left->flags & SHORTER));
	FUNC5(begin <= end);

	/*
	 * For the moment, assume the minimum number of matches is 1.  If zero
	 * matches are allowed, and the target string is empty, we are allowed to
	 * match regardless of the contents of the iter node --- but we would
	 * prefer to match once, so that capturing parens get set.  (An example of
	 * the concern here is a pattern like "()*\1", which historically this
	 * code has allowed to succeed.)  Therefore, we deal with the zero-matches
	 * case at the bottom, after failing to find any other way to match.
	 */
	min_matches = t->min;
	if (min_matches <= 0)
		min_matches = 1;

	/*
	 * We need workspace to track the endpoints of each sub-match.  Normally
	 * we consider only nonzero-length sub-matches, so there can be at most
	 * end-begin of them.  However, if min is larger than that, we will also
	 * consider zero-length sub-matches in order to find enough matches.
	 *
	 * For convenience, endpts[0] contains the "begin" pointer and we store
	 * sub-match endpoints in endpts[1..max_matches].
	 */
	max_matches = end - begin;
	if (max_matches > t->max && t->max != DUPINF)
		max_matches = t->max;
	if (max_matches < min_matches)
		max_matches = min_matches;
	endpts = (chr **) FUNC3((max_matches + 1) * sizeof(chr *));
	if (endpts == NULL)
		return REG_ESPACE;
	endpts[0] = begin;

	d = FUNC7(v, t->left);
	if (FUNC1())
	{
		FUNC0(endpts);
		return v->err;
	}
	FUNC4(("citer %d\n", t->id));

	/*
	 * Our strategy is to first find a set of sub-match endpoints that are
	 * valid according to the child node's DFA, and then recursively dissect
	 * each sub-match to confirm validity.  If any validity check fails,
	 * backtrack the last sub-match and try again.  And, when we next try for
	 * a validity check, we need not recheck any successfully verified
	 * sub-matches that we didn't move the endpoints of.  nverified remembers
	 * how many sub-matches are currently known okay.
	 */

	/* initialize to consider first sub-match */
	nverified = 0;
	k = 1;
	limit = end;

	/* iterate until satisfaction or failure */
	while (k > 0)
	{
		/* try to find an endpoint for the k'th sub-match */
		endpts[k] = FUNC8(v, d, endpts[k - 1], limit, (int *) NULL);
		if (FUNC1())
		{
			FUNC0(endpts);
			return v->err;
		}
		if (endpts[k] == NULL)
		{
			/* no match possible, so see if we can shorten previous one */
			k--;
			goto backtrack;
		}
		FUNC4(("%d: working endpoint %d: %ld\n",
				t->id, k, FUNC2(endpts[k])));

		/* k'th sub-match can no longer be considered verified */
		if (nverified >= k)
			nverified = k - 1;

		if (endpts[k] != end)
		{
			/* haven't reached end yet, try another iteration if allowed */
			if (k >= max_matches)
			{
				/* must try to shorten some previous match */
				k--;
				goto backtrack;
			}

			/* reject zero-length match unless necessary to achieve min */
			if (endpts[k] == endpts[k - 1] &&
				(k >= min_matches || min_matches - k < end - endpts[k]))
				goto backtrack;

			k++;
			limit = end;
			continue;
		}

		/*
		 * We've identified a way to divide the string into k sub-matches that
		 * works so far as the child DFA can tell.  If k is an allowed number
		 * of matches, start the slow part: recurse to verify each sub-match.
		 * We always have k <= max_matches, needn't check that.
		 */
		if (k < min_matches)
			goto backtrack;

		FUNC4(("%d: verifying %d..%d\n", t->id, nverified + 1, k));

		for (i = nverified + 1; i <= k; i++)
		{
			FUNC9(v, t->left);
			er = FUNC6(v, t->left, endpts[i - 1], endpts[i]);
			if (er == REG_OKAY)
			{
				nverified = i;
				continue;
			}
			if (er == REG_NOMATCH)
				break;
			/* oops, something failed */
			FUNC0(endpts);
			return er;
		}

		if (i > k)
		{
			/* satisfaction */
			FUNC4(("%d successful\n", t->id));
			FUNC0(endpts);
			return REG_OKAY;
		}

		/* match failed to verify, so backtrack */

backtrack:

		/*
		 * Must consider shorter versions of the current sub-match.  However,
		 * we'll only ask for a zero-length match if necessary.
		 */
		while (k > 0)
		{
			chr		   *prev_end = endpts[k - 1];

			if (endpts[k] > prev_end)
			{
				limit = endpts[k] - 1;
				if (limit > prev_end ||
					(k < min_matches && min_matches - k >= end - prev_end))
				{
					/* break out of backtrack loop, continue the outer one */
					break;
				}
			}
			/* can't shorten k'th sub-match any more, consider previous one */
			k--;
		}
	}

	/* all possibilities exhausted */
	FUNC0(endpts);

	/*
	 * Now consider the possibility that we can match to a zero-length string
	 * by using zero repetitions.
	 */
	if (t->min == 0 && begin == end)
	{
		FUNC4(("%d allowing zero matches\n", t->id));
		return REG_OKAY;
	}

	FUNC4(("%d failed\n", t->id));
	return REG_NOMATCH;
}