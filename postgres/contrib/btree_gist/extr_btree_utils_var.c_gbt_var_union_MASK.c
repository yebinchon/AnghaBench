#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_10__ {scalar_t__ trnc; } ;
typedef  TYPE_2__ gbtree_vinfo ;
struct TYPE_11__ {int n; TYPE_1__* vector; } ;
struct TYPE_9__ {int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ GistEntryVector ;
typedef  int /*<<< orphan*/  GBT_VARKEY_R ;
typedef  int /*<<< orphan*/  GBT_VARKEY ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,TYPE_2__ const*) ; 

GBT_VARKEY *
FUNC7(const GistEntryVector *entryvec, int32 *size, Oid collation,
			  const gbtree_vinfo *tinfo, FmgrInfo *flinfo)
{
	int			i = 0,
				numranges = entryvec->n;
	GBT_VARKEY *cur;
	Datum		out;
	GBT_VARKEY_R rk;

	*size = sizeof(GBT_VARKEY);

	cur = (GBT_VARKEY *) FUNC0(entryvec->vector[0].key);
	rk = FUNC4(cur);
	out = FUNC1(FUNC3(&rk));

	for (i = 1; i < numranges; i++)
	{
		cur = (GBT_VARKEY *) FUNC0(entryvec->vector[i].key);
		FUNC2(&out, cur, collation, tinfo, flinfo);
	}


	/* Truncate (=compress) key */
	if (tinfo->trnc)
	{
		int32		plen;
		GBT_VARKEY *trc = NULL;

		plen = FUNC5((GBT_VARKEY *) FUNC0(out), tinfo);
		trc = FUNC6((GBT_VARKEY *) FUNC0(out), plen + 1, tinfo);

		out = FUNC1(trc);
	}

	return ((GBT_VARKEY *) FUNC0(out));
}