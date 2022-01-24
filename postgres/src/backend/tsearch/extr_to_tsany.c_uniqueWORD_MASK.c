#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
typedef  int int32 ;
struct TYPE_4__ {int* apos; int /*<<< orphan*/  pos; } ;
struct TYPE_5__ {int alen; scalar_t__ len; TYPE_1__ pos; int /*<<< orphan*/  word; } ;
typedef  TYPE_2__ ParsedWord ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int MAXENTRYPOS ; 
 int MAXNUMPOS ; 
 int /*<<< orphan*/  compareWORD ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(ParsedWord *a, int32 l)
{
	ParsedWord *ptr,
			   *res;
	int			tmppos;

	if (l == 1)
	{
		tmppos = FUNC0(a->pos.pos);
		a->alen = 2;
		a->pos.apos = (uint16 *) FUNC1(sizeof(uint16) * a->alen);
		a->pos.apos[0] = 1;
		a->pos.apos[1] = tmppos;
		return l;
	}

	res = a;
	ptr = a + 1;

	/*
	 * Sort words with its positions
	 */
	FUNC3((void *) a, l, sizeof(ParsedWord), compareWORD);

	/*
	 * Initialize first word and its first position
	 */
	tmppos = FUNC0(a->pos.pos);
	a->alen = 2;
	a->pos.apos = (uint16 *) FUNC1(sizeof(uint16) * a->alen);
	a->pos.apos[0] = 1;
	a->pos.apos[1] = tmppos;

	/*
	 * Summarize position information for each word
	 */
	while (ptr - a < l)
	{
		if (!(ptr->len == res->len &&
			  FUNC5(ptr->word, res->word, res->len) == 0))
		{
			/*
			 * Got a new word, so put it in result
			 */
			res++;
			res->len = ptr->len;
			res->word = ptr->word;
			tmppos = FUNC0(ptr->pos.pos);
			res->alen = 2;
			res->pos.apos = (uint16 *) FUNC1(sizeof(uint16) * res->alen);
			res->pos.apos[0] = 1;
			res->pos.apos[1] = tmppos;
		}
		else
		{
			/*
			 * The word already exists, so adjust position information. But
			 * before we should check size of position's array, max allowed
			 * value for position and uniqueness of position
			 */
			FUNC2(ptr->word);
			if (res->pos.apos[0] < MAXNUMPOS - 1 && res->pos.apos[res->pos.apos[0]] != MAXENTRYPOS - 1 &&
				res->pos.apos[res->pos.apos[0]] != FUNC0(ptr->pos.pos))
			{
				if (res->pos.apos[0] + 1 >= res->alen)
				{
					res->alen *= 2;
					res->pos.apos = (uint16 *) FUNC4(res->pos.apos, sizeof(uint16) * res->alen);
				}
				if (res->pos.apos[0] == 0 || res->pos.apos[res->pos.apos[0]] != FUNC0(ptr->pos.pos))
				{
					res->pos.apos[res->pos.apos[0] + 1] = FUNC0(ptr->pos.pos);
					res->pos.apos[0]++;
				}
			}
		}
		ptr++;
	}

	return res + 1 - a;
}