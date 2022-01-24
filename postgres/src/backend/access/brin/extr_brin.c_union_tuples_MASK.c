#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * rd_indcollation; } ;
struct TYPE_13__ {TYPE_2__* bt_columns; } ;
struct TYPE_12__ {TYPE_7__* bd_index; TYPE_1__* bd_tupdesc; } ;
struct TYPE_11__ {int natts; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  TYPE_2__ BrinValues ;
typedef  int /*<<< orphan*/  BrinTuple ;
typedef  TYPE_3__ BrinMemTuple ;
typedef  TYPE_2__ BrinDesc ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BRIN_PROCNUM_UNION ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(BrinDesc *bdesc, BrinMemTuple *a, BrinTuple *b)
{
	int			keyno;
	BrinMemTuple *db;
	MemoryContext cxt;
	MemoryContext oldcxt;

	/* Use our own memory context to avoid retail pfree */
	cxt = FUNC0(CurrentMemoryContext,
								"brin union",
								ALLOCSET_DEFAULT_SIZES);
	oldcxt = FUNC3(cxt);
	db = FUNC5(bdesc, b, NULL);
	FUNC3(oldcxt);

	for (keyno = 0; keyno < bdesc->bd_tupdesc->natts; keyno++)
	{
		FmgrInfo   *unionFn;
		BrinValues *col_a = &a->bt_columns[keyno];
		BrinValues *col_b = &db->bt_columns[keyno];

		unionFn = FUNC6(bdesc->bd_index, keyno + 1,
									BRIN_PROCNUM_UNION);
		FUNC1(unionFn,
						  bdesc->bd_index->rd_indcollation[keyno],
						  FUNC4(bdesc),
						  FUNC4(col_a),
						  FUNC4(col_b));
	}

	FUNC2(cxt);
}