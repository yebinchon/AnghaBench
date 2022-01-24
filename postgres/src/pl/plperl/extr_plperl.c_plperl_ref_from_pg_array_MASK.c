#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ndims; int* nelems; int /*<<< orphan*/  nulls; int /*<<< orphan*/  elements; int /*<<< orphan*/  elem_is_rowtype; int /*<<< orphan*/  proc; int /*<<< orphan*/  transform_proc; } ;
typedef  TYPE_2__ plperl_array_info ;
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_8__ {TYPE_1__* prodesc; } ;
struct TYPE_6__ {int /*<<< orphan*/  trftypes; int /*<<< orphan*/  lang_oid; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HV ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOFunc_output ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* current_call_data ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int* FUNC15 (int) ; 
 TYPE_2__* FUNC16 (int) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static SV  *
FUNC20(Datum arg, Oid typid)
{
	dTHX;
	ArrayType  *ar = FUNC3(arg);
	Oid			elementtype = FUNC1(ar);
	int16		typlen;
	bool		typbyval;
	char		typalign,
				typdelim;
	Oid			typioparam;
	Oid			typoutputfunc;
	Oid			transform_funcid;
	int			i,
				nitems,
			   *dims;
	plperl_array_info *info;
	SV		   *av;
	HV		   *hv;

	/*
	 * Currently we make no effort to cache any of the stuff we look up here,
	 * which is bad.
	 */
	info = FUNC16(sizeof(plperl_array_info));

	/* get element type information, including output conversion function */
	FUNC8(elementtype, IOFunc_output,
					 &typlen, &typbyval, &typalign,
					 &typdelim, &typioparam, &typoutputfunc);

	/* Check for a transform function */
	transform_funcid = FUNC7(elementtype,
											 current_call_data->prodesc->lang_oid,
											 current_call_data->prodesc->trftypes);

	/* Look up transform or output function as appropriate */
	if (FUNC4(transform_funcid))
		FUNC6(transform_funcid, &info->transform_proc);
	else
		FUNC6(typoutputfunc, &info->proc);

	info->elem_is_rowtype = FUNC19(elementtype);

	/* Get the number and bounds of array dimensions */
	info->ndims = FUNC2(ar);
	dims = FUNC0(ar);

	/* No dimensions? Return an empty array */
	if (info->ndims == 0)
	{
		av = FUNC13((SV *) FUNC11());
	}
	else
	{
		FUNC5(ar, elementtype, typlen, typbyval,
						  typalign, &info->elements, &info->nulls,
						  &nitems);

		/* Get total number of elements in each dimension */
		info->nelems = FUNC15(sizeof(int) * info->ndims);
		info->nelems[0] = nitems;
		for (i = 1; i < info->ndims; i++)
			info->nelems[i] = info->nelems[i - 1] / dims[i - 1];

		av = FUNC17(info, 0, nitems, 0);
	}

	hv = FUNC12();
	(void) FUNC10(hv, "array", 5, av, 0);
	(void) FUNC10(hv, "typeoid", 7, FUNC14(typid), 0);

	return FUNC18(FUNC13((SV *) hv),
					FUNC9("PostgreSQL::InServer::ARRAY", 0));
}