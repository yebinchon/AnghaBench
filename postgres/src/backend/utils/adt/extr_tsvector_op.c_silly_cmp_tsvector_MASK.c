#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WordEntryPos ;
struct TYPE_13__ {scalar_t__ haspos; int /*<<< orphan*/  len; scalar_t__ pos; } ;
typedef  TYPE_1__ WordEntry ;
struct TYPE_14__ {scalar_t__ size; } ;
typedef  TYPE_2__* TSVector ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__* const) ; 
 int FUNC1 (TYPE_2__* const,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__* const,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_2__* const) ; 
 scalar_t__ FUNC4 (TYPE_2__* const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(const TSVector a, const TSVector b)
{
	if (FUNC4(a) < FUNC4(b))
		return -1;
	else if (FUNC4(a) > FUNC4(b))
		return 1;
	else if (a->size < b->size)
		return -1;
	else if (a->size > b->size)
		return 1;
	else
	{
		WordEntry  *aptr = FUNC0(a);
		WordEntry  *bptr = FUNC0(b);
		int			i = 0;
		int			res;


		for (i = 0; i < a->size; i++)
		{
			if (aptr->haspos != bptr->haspos)
			{
				return (aptr->haspos > bptr->haspos) ? -1 : 1;
			}
			else if ((res = FUNC7(FUNC3(a) + aptr->pos, aptr->len, FUNC3(b) + bptr->pos, bptr->len, false)) != 0)
			{
				return res;
			}
			else if (aptr->haspos)
			{
				WordEntryPos *ap = FUNC2(a, aptr);
				WordEntryPos *bp = FUNC2(b, bptr);
				int			j;

				if (FUNC1(a, aptr) != FUNC1(b, bptr))
					return (FUNC1(a, aptr) > FUNC1(b, bptr)) ? -1 : 1;

				for (j = 0; j < FUNC1(a, aptr); j++)
				{
					if (FUNC5(*ap) != FUNC5(*bp))
					{
						return (FUNC5(*ap) > FUNC5(*bp)) ? -1 : 1;
					}
					else if (FUNC6(*ap) != FUNC6(*bp))
					{
						return (FUNC6(*ap) > FUNC6(*bp)) ? -1 : 1;
					}
					ap++, bp++;
				}
			}

			aptr++;
			bptr++;
		}
	}

	return 0;
}