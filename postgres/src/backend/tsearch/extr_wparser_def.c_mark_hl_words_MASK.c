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
struct TYPE_6__ {int curwords; TYPE_1__* words; } ;
struct TYPE_5__ {int len; int selected; int replace; int skip; int in; scalar_t__ repeated; int /*<<< orphan*/  type; scalar_t__ item; } ;
typedef  int /*<<< orphan*/  TSQuery ;
typedef  TYPE_2__ HeadlineParsedText ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void
FUNC6(HeadlineParsedText *prs, TSQuery query, int highlight,
			  int shortword, int min_words, int max_words)
{
	int			p = 0,
				q = 0;
	int			bestb = -1,
				beste = -1;
	int			bestlen = -1;
	int			pose = 0,
				posb,
				poslen,
				curlen;

	int			i;

	if (highlight == 0)
	{
		while (FUNC5(prs, query, &p, &q))
		{
			/* find cover len in words */
			curlen = 0;
			poslen = 0;
			for (i = p; i <= q && curlen < max_words; i++)
			{
				if (!FUNC3(prs->words[i].type))
					curlen++;
				if (prs->words[i].item && !prs->words[i].repeated)
					poslen++;
				pose = i;
			}

			if (poslen < bestlen && !(FUNC2(prs->words[beste].type) || prs->words[beste].len <= shortword))
			{
				/* best already found, so try one more cover */
				p++;
				continue;
			}

			posb = p;
			if (curlen < max_words)
			{					/* find good end */
				for (i = i - 1; i < prs->curwords && curlen < max_words; i++)
				{
					if (i != q)
					{
						if (!FUNC3(prs->words[i].type))
							curlen++;
						if (prs->words[i].item && !prs->words[i].repeated)
							poslen++;
					}
					pose = i;
					if (FUNC2(prs->words[i].type) || prs->words[i].len <= shortword)
						continue;
					if (curlen >= min_words)
						break;
				}
				if (curlen < min_words && i >= prs->curwords)
				{				/* got end of text and our cover is shorter
								 * than min_words */
					for (i = p - 1; i >= 0; i--)
					{
						if (!FUNC3(prs->words[i].type))
							curlen++;
						if (prs->words[i].item && !prs->words[i].repeated)
							poslen++;
						if (curlen >= max_words)
							break;
						if (FUNC2(prs->words[i].type) || prs->words[i].len <= shortword)
							continue;
						if (curlen >= min_words)
							break;
					}
					posb = (i >= 0) ? i : 0;
				}
			}
			else
			{					/* shorter cover :((( */
				if (i > q)
					i = q;
				for (; curlen > min_words; i--)
				{
					if (!FUNC3(prs->words[i].type))
						curlen--;
					if (prs->words[i].item && !prs->words[i].repeated)
						poslen--;
					pose = i;
					if (FUNC2(prs->words[i].type) || prs->words[i].len <= shortword)
						continue;
					break;
				}
			}

			if (bestlen < 0 || (poslen > bestlen && !(FUNC2(prs->words[pose].type) || prs->words[pose].len <= shortword)) ||
				(bestlen >= 0 && !(FUNC2(prs->words[pose].type) || prs->words[pose].len <= shortword) &&
				 (FUNC2(prs->words[beste].type) || prs->words[beste].len <= shortword)))
			{
				bestb = posb;
				beste = pose;
				bestlen = poslen;
			}

			p++;
		}

		if (bestlen < 0)
		{
			curlen = 0;
			for (i = 0; i < prs->curwords && curlen < min_words; i++)
			{
				if (!FUNC3(prs->words[i].type))
					curlen++;
				pose = i;
			}
			bestb = 0;
			beste = pose;
		}
	}
	else
	{
		bestb = 0;
		beste = prs->curwords - 1;
	}

	for (i = bestb; i <= beste; i++)
	{
		if (prs->words[i].item)
			prs->words[i].selected = 1;
		if (highlight == 0)
		{
			if (FUNC0(prs->words[i].type))
				prs->words[i].replace = 1;
			else if (FUNC1(prs->words[i].type))
				prs->words[i].skip = 1;
		}
		else
		{
			if (FUNC4(prs->words[i].type))
				prs->words[i].skip = 1;
		}

		prs->words[i].in = (prs->words[i].repeated) ? 0 : 1;
	}

}