#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
typedef  int TypeCat ;
struct TYPE_5__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  composite; int /*<<< orphan*/  array; } ;
struct TYPE_6__ {scalar_t__ typid; scalar_t__ typmod; int typcat; TYPE_1__ io; int /*<<< orphan*/  scalar_io; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  JsValue ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_2__ ColumnIOData ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
#define  TYPECAT_ARRAY 132 
#define  TYPECAT_COMPOSITE 131 
#define  TYPECAT_COMPOSITE_DOMAIN 130 
#define  TYPECAT_DOMAIN 129 
#define  TYPECAT_SCALAR 128 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Datum
FUNC11(ColumnIOData *col,
					  Oid typid,
					  int32 typmod,
					  const char *colname,
					  MemoryContext mcxt,
					  Datum defaultval,
					  JsValue *jsv,
					  bool *isnull)
{
	TypeCat		typcat;

	FUNC4();

	/*
	 * Prepare column metadata cache for the given type.  Force lookup of the
	 * scalar_io data so that the json string hack below will work.
	 */
	if (col->typid != typid || col->typmod != typmod)
		FUNC10(col, typid, typmod, mcxt, true);

	*isnull = FUNC2(jsv);

	typcat = col->typcat;

	/* try to convert json string to a non-scalar type through input function */
	if (FUNC3(jsv) &&
		(typcat == TYPECAT_ARRAY ||
		 typcat == TYPECAT_COMPOSITE ||
		 typcat == TYPECAT_COMPOSITE_DOMAIN))
		typcat = TYPECAT_SCALAR;

	/* we must perform domain checks for NULLs, otherwise exit immediately */
	if (*isnull &&
		typcat != TYPECAT_DOMAIN &&
		typcat != TYPECAT_COMPOSITE_DOMAIN)
		return (Datum) 0;

	switch (typcat)
	{
		case TYPECAT_SCALAR:
			return FUNC9(&col->scalar_io, typid, typmod, jsv);

		case TYPECAT_ARRAY:
			return FUNC6(&col->io.array, colname, mcxt, jsv);

		case TYPECAT_COMPOSITE:
		case TYPECAT_COMPOSITE_DOMAIN:
			return FUNC7(&col->io.composite, typid,
									  colname, mcxt,
									  FUNC1(defaultval)
									  ? FUNC0(defaultval)
									  : NULL,
									  jsv, *isnull);

		case TYPECAT_DOMAIN:
			return FUNC8(&col->io.domain, typid, colname, mcxt,
								   jsv, *isnull);

		default:
			FUNC5(ERROR, "unrecognized type category '%c'", typcat);
			return (Datum) 0;
	}
}