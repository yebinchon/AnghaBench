#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  long uint32 ;
struct TYPE_26__ {int /*<<< orphan*/  root; } ;
struct TYPE_23__ {int /*<<< orphan*/ * data; } ;
struct TYPE_24__ {TYPE_1__ binary; } ;
struct TYPE_25__ {scalar_t__ type; TYPE_2__ val; } ;
typedef  TYPE_3__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbContainer ;
typedef  TYPE_4__ Jsonb ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  TYPE_4__* Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 long INT_MAX ; 
 long INT_MIN ; 
 int FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 long FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 TYPE_4__* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEXTOID ; 
 char* FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ FUNC19 (TYPE_4__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char,TYPE_4__***,int**,int*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ *,long) ; 
 TYPE_3__* FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 scalar_t__ jbvBinary ; 
 scalar_t__ jbvNull ; 
 long FUNC26 (char*,char**,int) ; 

__attribute__((used)) static Datum
FUNC27(FunctionCallInfo fcinfo, bool as_text)
{
	Jsonb	   *jb = FUNC13(0);
	ArrayType  *path = FUNC12(1);
	Datum	   *pathtext;
	bool	   *pathnulls;
	int			npath;
	int			i;
	bool		have_object = false,
				have_array = false;
	JsonbValue *jbvp = NULL;
	JsonbValue	jbvbuf;
	JsonbContainer *container;

	/*
	 * If the array contains any null elements, return NULL, on the grounds
	 * that you'd have gotten NULL if any RHS value were NULL in a nested
	 * series of applications of the -> operator.  (Note: because we also
	 * return NULL for error cases such as no-such-field, this is true
	 * regardless of the contents of the rest of the array.)
	 */
	if (FUNC20(path))
		FUNC15();

	FUNC22(path, TEXTOID, -1, false, 'i',
					  &pathtext, &pathnulls, &npath);

	/* Identify whether we have object, array, or scalar at top-level */
	container = &jb->root;

	if (FUNC3(jb))
		have_object = true;
	else if (FUNC2(jb) && !FUNC4(jb))
		have_array = true;
	else
	{
		FUNC0(FUNC2(jb) && FUNC4(jb));
		/* Extract the scalar value, if it is what we'll return */
		if (npath <= 0)
			jbvp = FUNC24(container, 0);
	}

	/*
	 * If the array is empty, return the entire LHS object, on the grounds
	 * that we should do zero field or element extractions.  For the
	 * non-scalar case we can just hand back the object without much work. For
	 * the scalar case, fall through and deal with the value below the loop.
	 * (This inconsistency arises because there's no easy way to generate a
	 * JsonbValue directly for root-level containers.)
	 */
	if (npath <= 0 && jbvp == NULL)
	{
		if (as_text)
		{
			FUNC16(FUNC21(FUNC9(NULL,
															container,
															FUNC19(jb))));
		}
		else
		{
			/* not text mode - just hand back the jsonb */
			FUNC14(jb);
		}
	}

	for (i = 0; i < npath; i++)
	{
		if (have_object)
		{
			jbvp = FUNC25(container,
												FUNC18(pathtext[i]),
												FUNC19(pathtext[i]) - VARHDRSZ,
												&jbvbuf);
		}
		else if (have_array)
		{
			long		lindex;
			uint32		index;
			char	   *indextext = FUNC17(pathtext[i]);
			char	   *endptr;

			errno = 0;
			lindex = FUNC26(indextext, &endptr, 10);
			if (endptr == indextext || *endptr != '\0' || errno != 0 ||
				lindex > INT_MAX || lindex < INT_MIN)
				FUNC15();

			if (lindex >= 0)
			{
				index = (uint32) lindex;
			}
			else
			{
				/* Handle negative subscript */
				uint32		nelements;

				/* Container must be array, but make sure */
				if (!FUNC5(container))
					FUNC23(ERROR, "not a jsonb array");

				nelements = FUNC8(container);

				if (-lindex > nelements)
					FUNC15();
				else
					index = nelements + lindex;
			}

			jbvp = FUNC24(container, index);
		}
		else
		{
			/* scalar, extraction yields a null */
			FUNC15();
		}

		if (jbvp == NULL)
			FUNC15();
		else if (i == npath - 1)
			break;

		if (jbvp->type == jbvBinary)
		{
			container = jbvp->val.binary.data;
			have_object = FUNC6(container);
			have_array = FUNC5(container);
			FUNC0(!FUNC7(container));
		}
		else
		{
			FUNC0(FUNC1(jbvp));
			have_object = false;
			have_array = false;
		}
	}

	if (as_text)
	{
		if (jbvp->type == jbvNull)
			FUNC15();

		FUNC16(FUNC10(jbvp));
	}
	else
	{
		Jsonb	   *res = FUNC11(jbvp);

		/* not text mode - just hand back the jsonb */
		FUNC14(res);
	}
}