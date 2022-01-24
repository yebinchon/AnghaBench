#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_16__ {int npos; scalar_t__* pos; } ;
typedef  TYPE_1__ WordEntryPosVector1 ;
struct TYPE_17__ {int npos; int /*<<< orphan*/ * pos; } ;
typedef  TYPE_2__ WordEntryPosVector ;
typedef  int /*<<< orphan*/  WordEntryPos ;
struct TYPE_18__ {scalar_t__ haspos; } ;
typedef  TYPE_3__ WordEntry ;
struct TYPE_19__ {int size; } ;
typedef  int /*<<< orphan*/  TSVector ;
typedef  TYPE_4__* TSQuery ;
typedef  TYPE_2__ QueryOperand ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAXENTRYPOS ; 
 TYPE_2__** FUNC1 (TYPE_4__*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 float FUNC5 (float const*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_2__*,int*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**) ; 
 float FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static float
FUNC12(const float *w, TSVector t, TSQuery q)
{
	WordEntryPosVector **pos;
	WordEntryPosVector1 posnull;
	WordEntryPosVector *POSNULL;
	int			i,
				k,
				l,
				p;
	WordEntry  *entry,
			   *firstentry;
	WordEntryPos *post,
			   *ct;
	int32		dimt,
				lenct,
				dist,
				nitem;
	float		res = -1.0;
	QueryOperand **item;
	int			size = q->size;

	item = FUNC1(q, &size);
	if (size < 2)
	{
		FUNC8(item);
		return FUNC5(w, t, q);
	}
	pos = (WordEntryPosVector **) FUNC7(sizeof(WordEntryPosVector *) * q->size);

	/* A dummy WordEntryPos array to use when haspos is false */
	posnull.npos = 1;
	posnull.pos[0] = 0;
	FUNC3(posnull.pos[0], MAXENTRYPOS - 1);
	POSNULL = (WordEntryPosVector *) &posnull;

	for (i = 0; i < size; i++)
	{
		firstentry = entry = FUNC6(t, q, item[i], &nitem);
		if (!entry)
			continue;

		while (entry - firstentry < nitem)
		{
			if (entry->haspos)
				pos[i] = FUNC4(t, entry);
			else
				pos[i] = POSNULL;

			dimt = pos[i]->npos;
			post = pos[i]->pos;
			for (k = 0; k < i; k++)
			{
				if (!pos[k])
					continue;
				lenct = pos[k]->npos;
				ct = pos[k]->pos;
				for (l = 0; l < dimt; l++)
				{
					for (p = 0; p < lenct; p++)
					{
						dist = FUNC0((int) FUNC2(post[l]) - (int) FUNC2(ct[p]));
						if (dist || (dist == 0 && (pos[i] == POSNULL || pos[k] == POSNULL)))
						{
							float		curw;

							if (!dist)
								dist = MAXENTRYPOS;
							curw = FUNC9(FUNC11(post[l]) * FUNC11(ct[p]) * FUNC10(dist));
							res = (res < 0) ? curw : 1.0 - (1.0 - res) * (1.0 - curw);
						}
					}
				}
			}

			entry++;
		}
	}
	FUNC8(pos);
	FUNC8(item);
	return res;
}