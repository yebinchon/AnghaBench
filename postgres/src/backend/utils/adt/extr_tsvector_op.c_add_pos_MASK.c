#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  WordEntryPos ;
struct TYPE_8__ {int haspos; } ;
typedef  TYPE_1__ WordEntry ;
struct TYPE_9__ {int npos; } ;
typedef  int /*<<< orphan*/  TSVector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAXENTRYPOS ; 
 int MAXNUMPOS ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int32
FUNC8(TSVector src, WordEntry *srcptr,
		TSVector dest, WordEntry *destptr,
		int32 maxpos)
{
	uint16	   *clen = &FUNC7(dest, destptr)->npos;
	int			i;
	uint16		slen = FUNC1(src, srcptr),
				startlen;
	WordEntryPos *spos = FUNC2(src, srcptr),
			   *dpos = FUNC2(dest, destptr);

	if (!destptr->haspos)
		*clen = 0;

	startlen = *clen;
	for (i = 0;
		 i < slen && *clen < MAXNUMPOS &&
		 (*clen == 0 || FUNC3(dpos[*clen - 1]) != MAXENTRYPOS - 1);
		 i++)
	{
		FUNC6(dpos[*clen], FUNC4(spos[i]));
		FUNC5(dpos[*clen], FUNC0(FUNC3(spos[i]) + maxpos));
		(*clen)++;
	}

	if (*clen != startlen)
		destptr->haspos = 1;
	return *clen - startlen;
}