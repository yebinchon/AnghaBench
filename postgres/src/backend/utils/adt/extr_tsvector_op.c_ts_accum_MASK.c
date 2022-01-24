#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_13__ {int size; } ;
struct TYPE_12__ {int maxdepth; } ;
typedef  TYPE_1__ TSVectorStat ;
typedef  TYPE_2__* TSVector ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static TSVectorStat *
FUNC6(MemoryContext persistentContext, TSVectorStat *stat, Datum data)
{
	TSVector	txt = FUNC1(data);
	uint32		i,
				nbit = 0,
				offset;

	if (stat == NULL)
	{							/* Init in first */
		stat = FUNC2(persistentContext, sizeof(TSVectorStat));
		stat->maxdepth = 1;
	}

	/* simple check of correctness */
	if (txt == NULL || txt->size == 0)
	{
		if (txt && txt != (TSVector) FUNC0(data))
			FUNC5(txt);
		return stat;
	}

	i = txt->size - 1;
	for (; i > 0; i >>= 1)
		nbit++;

	nbit = 1 << nbit;
	offset = (nbit - txt->size) / 2;

	FUNC4(persistentContext, stat, txt, (nbit >> 1) - offset);
	FUNC3(persistentContext, stat, txt, 0, nbit, offset);

	return stat;
}