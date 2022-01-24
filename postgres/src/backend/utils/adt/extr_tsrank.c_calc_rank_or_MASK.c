#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_10__ {int npos; scalar_t__* pos; } ;
typedef  TYPE_1__ WordEntryPosVector1 ;
typedef  scalar_t__ WordEntryPos ;
struct TYPE_11__ {scalar_t__ haspos; } ;
typedef  TYPE_2__ WordEntry ;
struct TYPE_12__ {int size; } ;
typedef  int /*<<< orphan*/  TSVector ;
typedef  TYPE_3__* TSQuery ;
typedef  int /*<<< orphan*/  QueryOperand ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ ** FUNC2 (TYPE_3__*,int*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 float FUNC5 (scalar_t__) ; 

__attribute__((used)) static float
FUNC6(const float *w, TSVector t, TSQuery q)
{
	WordEntry  *entry,
			   *firstentry;
	WordEntryPosVector1 posnull;
	WordEntryPos *post;
	int32		dimt,
				j,
				i,
				nitem;
	float		res = 0.0;
	QueryOperand **item;
	int			size = q->size;

	/* A dummy WordEntryPos array to use when haspos is false */
	posnull.npos = 1;
	posnull.pos[0] = 0;

	item = FUNC2(q, &size);

	for (i = 0; i < size; i++)
	{
		float		resj,
					wjm;
		int32		jm;

		firstentry = entry = FUNC3(t, q, item[i], &nitem);
		if (!entry)
			continue;

		while (entry - firstentry < nitem)
		{
			if (entry->haspos)
			{
				dimt = FUNC0(t, entry);
				post = FUNC1(t, entry);
			}
			else
			{
				dimt = posnull.npos;
				post = posnull.pos;
			}

			resj = 0.0;
			wjm = -1.0;
			jm = 0;
			for (j = 0; j < dimt; j++)
			{
				resj = resj + FUNC5(post[j]) / ((j + 1) * (j + 1));
				if (FUNC5(post[j]) > wjm)
				{
					wjm = FUNC5(post[j]);
					jm = j;
				}
			}
/*
			limit (sum(i/i^2),i->inf) = pi^2/6
			resj = sum(wi/i^2),i=1,noccurence,
			wi - should be sorted desc,
			don't sort for now, just choose maximum weight. This should be corrected
			Oleg Bartunov
*/
			res = res + (wjm + resj - wjm / ((jm + 1) * (jm + 1))) / 1.64493406685;

			entry++;
		}
	}
	if (size > 0)
		res = res / size;
	FUNC4(item);
	return res;
}