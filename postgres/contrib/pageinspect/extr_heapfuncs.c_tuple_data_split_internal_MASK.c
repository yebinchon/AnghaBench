#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16 ;
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  bits8 ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_14__ {int attlen; int /*<<< orphan*/  attalign; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {int natts; } ;
struct TYPE_11__ {scalar_t__ relam; } ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayBuildState ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  BYTEAOID ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int HEAP_HASNULL ; 
 int HEAP_NATTS_MASK ; 
 scalar_t__ HEAP_TABLE_AM_OID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_4__* FUNC4 (TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int,char*) ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Datum
FUNC25(Oid relid, char *tupdata,
						  uint16 tupdata_len, uint16 t_infomask,
						  uint16 t_infomask2, bits8 *t_bits,
						  bool do_detoast)
{
	ArrayBuildState *raw_attrs;
	int			nattrs;
	int			i;
	int			off = 0;
	Relation	rel;
	TupleDesc	tupdesc;

	/* Get tuple descriptor from relation OID */
	rel = FUNC24(relid, AccessShareLock);
	tupdesc = FUNC2(rel);

	raw_attrs = FUNC18(BYTEAOID, CurrentMemoryContext, false);
	nattrs = tupdesc->natts;

	if (rel->rd_rel->relam != HEAP_TABLE_AM_OID)
		FUNC15(ERROR, (FUNC16(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC17("only heap AM is supported")));

	if (nattrs < (t_infomask2 & HEAP_NATTS_MASK))
		FUNC15(ERROR,
				(FUNC16(ERRCODE_DATA_CORRUPTED),
				 FUNC17("number of attributes in tuple header is greater than number of attributes in tuple descriptor")));

	for (i = 0; i < nattrs; i++)
	{
		Form_pg_attribute attr;
		bool		is_null;
		bytea	   *attr_data = NULL;

		attr = FUNC4(tupdesc, i);

		/*
		 * Tuple header can specify less attributes than tuple descriptor as
		 * ALTER TABLE ADD COLUMN without DEFAULT keyword does not actually
		 * change tuples in pages, so attributes with numbers greater than
		 * (t_infomask2 & HEAP_NATTS_MASK) should be treated as NULL.
		 */
		if (i >= (t_infomask2 & HEAP_NATTS_MASK))
			is_null = true;
		else
			is_null = (t_infomask & HEAP_HASNULL) && FUNC14(i, t_bits);

		if (!is_null)
		{
			int			len;

			if (attr->attlen == -1)
			{
				off = FUNC13(off, attr->attalign, -1,
										tupdata + off);

				/*
				 * As VARSIZE_ANY throws an exception if it can't properly
				 * detect the type of external storage in macros VARTAG_SIZE,
				 * this check is repeated to have a nicer error handling.
				 */
				if (FUNC5(tupdata + off) &&
					!FUNC7(tupdata + off) &&
					!FUNC6(tupdata + off))
					FUNC15(ERROR,
							(FUNC16(ERRCODE_DATA_CORRUPTED),
							 FUNC17("first byte of varlena attribute is incorrect for attribute %d", i)));

				len = FUNC9(tupdata + off);
			}
			else
			{
				off = FUNC12(off, attr->attalign);
				len = attr->attlen;
			}

			if (tupdata_len < off + len)
				FUNC15(ERROR,
						(FUNC16(ERRCODE_DATA_CORRUPTED),
						 FUNC17("unexpected end of tuple data")));

			if (attr->attlen == -1 && do_detoast)
				attr_data = FUNC0(tupdata + off);
			else
			{
				attr_data = (bytea *) FUNC21(len + VARHDRSZ);
				FUNC3(attr_data, len + VARHDRSZ);
				FUNC20(FUNC8(attr_data), tupdata + off, len);
			}

			off = FUNC11(off, attr->attlen,
										tupdata + off);
		}

		raw_attrs = FUNC10(raw_attrs, FUNC1(attr_data),
									 is_null, BYTEAOID, CurrentMemoryContext);
		if (attr_data)
			FUNC22(attr_data);
	}

	if (tupdata_len != off)
		FUNC15(ERROR,
				(FUNC16(ERRCODE_DATA_CORRUPTED),
				 FUNC17("end of tuple reached without looking at all its data")));

	FUNC23(rel, AccessShareLock);

	return FUNC19(raw_attrs, CurrentMemoryContext);
}