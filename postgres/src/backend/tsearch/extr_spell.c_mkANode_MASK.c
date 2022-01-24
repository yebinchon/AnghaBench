#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8 ;
struct TYPE_14__ {int replen; } ;
struct TYPE_13__ {int length; TYPE_2__* data; } ;
struct TYPE_12__ {int naff; char val; TYPE_4__** aff; TYPE_3__* node; } ;
struct TYPE_11__ {TYPE_4__* Affix; } ;
typedef  TYPE_1__ IspellDict ;
typedef  TYPE_2__ AffixNodeData ;
typedef  TYPE_3__ AffixNode ;
typedef  TYPE_4__ AFFIX ;

/* Variables and functions */
 scalar_t__ ANHRDSZ ; 
 char FUNC0 (TYPE_4__*,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__**,TYPE_4__**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static AffixNode *
FUNC6(IspellDict *Conf, int low, int high, int level, int type)
{
	int			i;
	int			nchar = 0;
	uint8		lastchar = '\0';
	AffixNode  *rs;
	AffixNodeData *data;
	int			lownew = low;
	int			naff;
	AFFIX	  **aff;

	for (i = low; i < high; i++)
		if (Conf->Affix[i].replen > level && lastchar != FUNC0(Conf->Affix + i, level, type))
		{
			nchar++;
			lastchar = FUNC0(Conf->Affix + i, level, type);
		}

	if (!nchar)
		return NULL;

	aff = (AFFIX **) FUNC5(sizeof(AFFIX *) * (high - low + 1));
	naff = 0;

	rs = (AffixNode *) FUNC2(ANHRDSZ + nchar * sizeof(AffixNodeData));
	rs->length = nchar;
	data = rs->data;

	lastchar = '\0';
	for (i = low; i < high; i++)
		if (Conf->Affix[i].replen > level)
		{
			if (lastchar != FUNC0(Conf->Affix + i, level, type))
			{
				if (lastchar)
				{
					/* Next level of the prefix tree */
					data->node = FUNC6(Conf, lownew, i, level + 1, type);
					if (naff)
					{
						data->naff = naff;
						data->aff = (AFFIX **) FUNC1(sizeof(AFFIX *) * naff);
						FUNC3(data->aff, aff, sizeof(AFFIX *) * naff);
						naff = 0;
					}
					data++;
					lownew = i;
				}
				lastchar = FUNC0(Conf->Affix + i, level, type);
			}
			data->val = FUNC0(Conf->Affix + i, level, type);
			if (Conf->Affix[i].replen == level + 1)
			{					/* affix stopped */
				aff[naff++] = Conf->Affix + i;
			}
		}

	/* Next level of the prefix tree */
	data->node = FUNC6(Conf, lownew, high, level + 1, type);
	if (naff)
	{
		data->naff = naff;
		data->aff = (AFFIX **) FUNC1(sizeof(AFFIX *) * naff);
		FUNC3(data->aff, aff, sizeof(AFFIX *) * naff);
		naff = 0;
	}

	FUNC4(aff);

	return rs;
}