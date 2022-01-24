#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32 ;
struct TYPE_16__ {scalar_t__ (* f_cmp ) (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ gbtree_vinfo ;
struct TYPE_18__ {scalar_t__ lower; scalar_t__ upper; } ;
struct TYPE_17__ {TYPE_2__* rel; int /*<<< orphan*/  key; } ;
struct TYPE_15__ {TYPE_1__* rd_att; } ;
struct TYPE_14__ {int natts; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__ GISTENTRY ;
typedef  TYPE_5__ GBT_VARKEY_R ;
typedef  int /*<<< orphan*/  GBT_VARKEY ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 double FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FLT_MAX ; 
 scalar_t__ FLT_MIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (scalar_t__) ; 
 size_t VARHDRSZ ; 
 size_t FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 TYPE_5__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

float *
FUNC12(float *res, const GISTENTRY *o, const GISTENTRY *n,
				Oid collation, const gbtree_vinfo *tinfo, FmgrInfo *flinfo)
{
	GBT_VARKEY *orge = (GBT_VARKEY *) FUNC1(o->key);
	GBT_VARKEY *newe = (GBT_VARKEY *) FUNC1(n->key);
	GBT_VARKEY_R ok,
				nk;

	*res = 0.0;

	nk = FUNC7(newe);
	if (nk.lower == nk.upper)	/* leaf */
	{
		GBT_VARKEY *tmp;

		tmp = FUNC8(newe, tinfo, flinfo);
		if (tmp != newe)
			nk = FUNC7(tmp);
	}
	ok = FUNC7(orge);

	if ((FUNC4(ok.lower) - VARHDRSZ) == 0 && (FUNC4(ok.upper) - VARHDRSZ) == 0)
		*res = 0.0;
	else if (!((tinfo->f_cmp(nk.lower, ok.lower, collation, flinfo) >= 0 ||
				FUNC5(ok.lower, nk.lower, tinfo)) &&
			   (tinfo->f_cmp(nk.upper, ok.upper, collation, flinfo) <= 0 ||
				FUNC5(ok.upper, nk.upper, tinfo))))
	{
		Datum		d = FUNC2(0);
		double		dres;
		int32		ol,
					ul;

		FUNC6(&d, orge, collation, tinfo, flinfo);
		ol = FUNC9((GBT_VARKEY *) FUNC1(d), tinfo);
		FUNC6(&d, newe, collation, tinfo, flinfo);
		ul = FUNC9((GBT_VARKEY *) FUNC1(d), tinfo);

		if (ul < ol)
		{
			dres = (ol - ul);	/* reduction of common prefix len */
		}
		else
		{
			GBT_VARKEY_R uk = FUNC7((GBT_VARKEY *) FUNC1(d));
			unsigned char tmp[4];

			tmp[0] = (unsigned char) (((FUNC4(ok.lower) - VARHDRSZ) <= ul) ? 0 : (FUNC3(ok.lower)[ul]));
			tmp[1] = (unsigned char) (((FUNC4(uk.lower) - VARHDRSZ) <= ul) ? 0 : (FUNC3(uk.lower)[ul]));
			tmp[2] = (unsigned char) (((FUNC4(ok.upper) - VARHDRSZ) <= ul) ? 0 : (FUNC3(ok.upper)[ul]));
			tmp[3] = (unsigned char) (((FUNC4(uk.upper) - VARHDRSZ) <= ul) ? 0 : (FUNC3(uk.upper)[ul]));
			dres = FUNC0(tmp[0] - tmp[1]) + FUNC0(tmp[3] - tmp[2]);
			dres /= 256.0;
		}

		*res += FLT_MIN;
		*res += (float) (dres / ((double) (ol + 1)));
		*res *= (FLT_MAX / (o->rel->rd_att->natts + 1));
	}

	return res;
}