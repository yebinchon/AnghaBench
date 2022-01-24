#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  scalar_t__ TypeFuncClass ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_11__ {TYPE_1__* prodesc; } ;
struct TYPE_10__ {scalar_t__ tdtypeid; } ;
struct TYPE_9__ {int /*<<< orphan*/  trftypes; int /*<<< orphan*/  lang_oid; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  scalar_t__ Oid ;
typedef  scalar_t__ FunctionCallInfo ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ SVt_PVHV ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ TYPEFUNC_COMPOSITE ; 
 scalar_t__ TYPEFUNC_COMPOSITE_DOMAIN ; 
 scalar_t__ TYPEFUNC_OTHER ; 
 scalar_t__ VOIDOID ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_6__* current_call_data ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__*,TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC19 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 char* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 

__attribute__((used)) static Datum
FUNC25(SV *sv, Oid typid, int32 typmod,
				   FunctionCallInfo fcinfo,
				   FmgrInfo *finfo, Oid typioparam,
				   bool *isnull)
{
	FmgrInfo	tmp;
	Oid			funcid;

	/* we might recurse */
	FUNC10();

	*isnull = false;

	/*
	 * Return NULL if result is undef, or if we're in a function returning
	 * VOID.  In the latter case, we should pay no attention to the last Perl
	 * statement's result, and this is a convenient means to ensure that.
	 */
	if (!sv || !FUNC5(sv) || typid == VOIDOID)
	{
		/* look up type info if they did not pass it */
		if (!finfo)
		{
			FUNC9(typid, &tmp, &typioparam);
			finfo = &tmp;
		}
		*isnull = true;
		/* must call typinput in case it wants to reject NULL */
		return FUNC1(finfo, NULL, typioparam, typmod);
	}
	else if ((funcid = FUNC18(typid, current_call_data->prodesc->lang_oid, current_call_data->prodesc->trftypes)))
		return FUNC2(funcid, FUNC3(sv));
	else if (FUNC6(sv))
	{
		/* handle references */
		SV		   *sav = FUNC17(sv);

		if (sav)
		{
			/* handle an arrayref */
			return FUNC21(sav, typid, typmod);
		}
		else if (FUNC8(FUNC7(sv)) == SVt_PVHV)
		{
			/* handle a hashref */
			Datum		ret;
			TupleDesc	td;
			bool		isdomain;

			if (!FUNC24(typid))
				FUNC12(ERROR,
						(FUNC13(ERRCODE_DATATYPE_MISMATCH),
						 FUNC14("cannot convert Perl hash to non-composite type %s",
								FUNC15(typid))));

			td = FUNC19(typid, typmod, true);
			if (td != NULL)
			{
				/* Did we look through a domain? */
				isdomain = (typid != td->tdtypeid);
			}
			else
			{
				/* Must be RECORD, try to resolve based on call info */
				TypeFuncClass funcclass;

				if (fcinfo)
					funcclass = FUNC16(fcinfo, &typid, &td);
				else
					funcclass = TYPEFUNC_OTHER;
				if (funcclass != TYPEFUNC_COMPOSITE &&
					funcclass != TYPEFUNC_COMPOSITE_DOMAIN)
					FUNC12(ERROR,
							(FUNC13(ERRCODE_FEATURE_NOT_SUPPORTED),
							 FUNC14("function returning record called in context "
									"that cannot accept type record")));
				FUNC0(td);
				isdomain = (funcclass == TYPEFUNC_COMPOSITE_DOMAIN);
			}

			ret = FUNC22(sv, td);

			if (isdomain)
				FUNC11(ret, false, typid, NULL, NULL);

			/* Release on the result of get_call_result_type is harmless */
			FUNC4(td);

			return ret;
		}

		/*
		 * If it's a reference to something else, such as a scalar, just
		 * recursively look through the reference.
		 */
		return FUNC25(FUNC7(sv), typid, typmod,
								  fcinfo, finfo, typioparam,
								  isnull);
	}
	else
	{
		/* handle a string/number */
		Datum		ret;
		char	   *str = FUNC23(sv);

		/* did not pass in any typeinfo? look it up */
		if (!finfo)
		{
			FUNC9(typid, &tmp, &typioparam);
			finfo = &tmp;
		}

		ret = FUNC1(finfo, str, typioparam, typmod);
		FUNC20(str);

		return ret;
	}
}