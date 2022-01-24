#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_19__ {int /*<<< orphan*/  rel; } ;
struct TYPE_18__ {int attlen; scalar_t__ attbyval; int /*<<< orphan*/  attnum; } ;
struct TYPE_17__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_16__ {int natts; } ;
typedef  TYPE_2__* IndexTuple ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_4__ BtreeCheckState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int INDEX_MAX_KEYS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (TYPE_1__*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static IndexTuple
FUNC17(BtreeCheckState *state, IndexTuple itup)
{
	TupleDesc	tupleDescriptor = FUNC6(state->rel);
	Datum		normalized[INDEX_MAX_KEYS];
	bool		isnull[INDEX_MAX_KEYS];
	bool		toast_free[INDEX_MAX_KEYS];
	bool		formnewtup = false;
	IndexTuple	reformed;
	int			i;

	/* Easy case: It's immediately clear that tuple has no varlena datums */
	if (!FUNC1(itup))
		return itup;

	for (i = 0; i < tupleDescriptor->natts; i++)
	{
		Form_pg_attribute att;

		att = FUNC8(tupleDescriptor, i);

		/* Assume untoasted/already normalized datum initially */
		toast_free[i] = false;
		normalized[i] = FUNC15(itup, att->attnum,
									  tupleDescriptor,
									  &isnull[i]);
		if (att->attbyval || att->attlen != -1 || isnull[i])
			continue;

		/*
		 * Callers always pass a tuple that could safely be inserted into the
		 * index without further processing, so an external varlena header
		 * should never be encountered here
		 */
		if (FUNC10(FUNC0(normalized[i])))
			FUNC11(ERROR,
					(FUNC12(ERRCODE_INDEX_CORRUPTED),
					 FUNC13("external varlena datum in tuple that references heap row (%u,%u) in index \"%s\"",
							FUNC2(&(itup->t_tid)),
							FUNC3(&(itup->t_tid)),
							FUNC7(state->rel))));
		else if (FUNC9(FUNC0(normalized[i])))
		{
			formnewtup = true;
			normalized[i] = FUNC5(FUNC4(normalized[i]));
			toast_free[i] = true;
		}
	}

	/* Easier case: Tuple has varlena datums, none of which are compressed */
	if (!formnewtup)
		return itup;

	/*
	 * Hard case: Tuple had compressed varlena datums that necessitate
	 * creating normalized version of the tuple from uncompressed input datums
	 * (normalized input datums).  This is rather naive, but shouldn't be
	 * necessary too often.
	 *
	 * Note that we rely on deterministic index_form_tuple() TOAST compression
	 * of normalized input.
	 */
	reformed = FUNC14(tupleDescriptor, normalized, isnull);
	reformed->t_tid = itup->t_tid;

	/* Cannot leak memory here */
	for (i = 0; i < tupleDescriptor->natts; i++)
		if (toast_free[i])
			FUNC16(FUNC0(normalized[i]));

	return reformed;
}