#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_17__ {int curwords; int lenwords; TYPE_4__* words; } ;
struct TYPE_16__ {int repeated; TYPE_1__* item; int /*<<< orphan*/  pos; } ;
struct TYPE_13__ {int /*<<< orphan*/  prefix; int /*<<< orphan*/  length; scalar_t__ distance; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_1__ qoperand; } ;
struct TYPE_14__ {int size; } ;
typedef  TYPE_2__* TSQuery ;
typedef  TYPE_3__ QueryItem ;
typedef  TYPE_4__ HeadlineWordEntry ;
typedef  TYPE_5__ HeadlineParsedText ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ QI_VAL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*,int) ; 
 scalar_t__ FUNC4 (void*,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(HeadlineParsedText *prs, TSQuery query, int32 pos, char *buf, int buflen)
{
	int			i;
	QueryItem  *item = FUNC1(query);
	HeadlineWordEntry *word;

	while (prs->curwords + query->size >= prs->lenwords)
	{
		prs->lenwords *= 2;
		prs->words = (HeadlineWordEntry *) FUNC4((void *) prs->words, prs->lenwords * sizeof(HeadlineWordEntry));
	}

	word = &(prs->words[prs->curwords - 1]);
	word->pos = FUNC2(pos);
	for (i = 0; i < query->size; i++)
	{
		if (item->type == QI_VAL &&
			FUNC5(FUNC0(query) + item->qoperand.distance, item->qoperand.length,
							buf, buflen, item->qoperand.prefix) == 0)
		{
			if (word->item)
			{
				FUNC3(&(prs->words[prs->curwords]), word, sizeof(HeadlineWordEntry));
				prs->words[prs->curwords].item = &item->qoperand;
				prs->words[prs->curwords].repeated = 1;
				prs->curwords++;
			}
			else
				word->item = &item->qoperand;
		}
		item++;
	}
}