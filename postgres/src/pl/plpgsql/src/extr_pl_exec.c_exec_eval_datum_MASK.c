#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_18__ ;
typedef  struct TYPE_25__   TYPE_13__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_34__ {int er_typmod; int /*<<< orphan*/  er_tupdesc_id; int /*<<< orphan*/  er_typeid; } ;
struct TYPE_33__ {int dtype; } ;
struct TYPE_32__ {scalar_t__* datums; } ;
struct TYPE_31__ {int /*<<< orphan*/  refname; TYPE_8__* erh; int /*<<< orphan*/  rectypeid; } ;
struct TYPE_26__ {int ftypmod; int /*<<< orphan*/  fnumber; int /*<<< orphan*/  ftypeid; } ;
struct TYPE_30__ {size_t recparentno; TYPE_18__ finfo; int /*<<< orphan*/  rectupledescid; int /*<<< orphan*/  fieldname; } ;
struct TYPE_29__ {TYPE_13__* rowtupdesc; } ;
struct TYPE_28__ {int isnull; int /*<<< orphan*/  value; TYPE_1__* datatype; } ;
struct TYPE_27__ {int atttypmod; int /*<<< orphan*/  typoid; } ;
struct TYPE_25__ {int tdtypmod; int /*<<< orphan*/  tdtypeid; } ;
typedef  TYPE_2__ PLpgSQL_var ;
typedef  TYPE_3__ PLpgSQL_row ;
typedef  TYPE_4__ PLpgSQL_recfield ;
typedef  TYPE_5__ PLpgSQL_rec ;
typedef  TYPE_6__ PLpgSQL_execstate ;
typedef  TYPE_7__ PLpgSQL_datum ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_8__ ExpandedRecordHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_13__*) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  PLPGSQL_DTYPE_PROMISE 132 
#define  PLPGSQL_DTYPE_REC 131 
#define  PLPGSQL_DTYPE_RECFIELD 130 
#define  PLPGSQL_DTYPE_ROW 129 
#define  PLPGSQL_DTYPE_VAR 128 
 int /*<<< orphan*/  RECORDOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,int /*<<< orphan*/ ,TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_6__*,TYPE_3__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static void
FUNC16(PLpgSQL_execstate *estate,
				PLpgSQL_datum *datum,
				Oid *typeid,
				int32 *typetypmod,
				Datum *value,
				bool *isnull)
{
	MemoryContext oldcontext;

	switch (datum->dtype)
	{
		case PLPGSQL_DTYPE_PROMISE:
			/* fulfill promise if needed, then handle like regular var */
			FUNC14(estate, (PLpgSQL_var *) datum);

			/* FALL THRU */

		case PLPGSQL_DTYPE_VAR:
			{
				PLpgSQL_var *var = (PLpgSQL_var *) datum;

				*typeid = var->datatype->typoid;
				*typetypmod = var->datatype->atttypmod;
				*value = var->value;
				*isnull = var->isnull;
				break;
			}

		case PLPGSQL_DTYPE_ROW:
			{
				PLpgSQL_row *row = (PLpgSQL_row *) datum;
				HeapTuple	tup;

				/* We get here if there are multiple OUT parameters */
				if (!row->rowtupdesc)	/* should not happen */
					FUNC5(ERROR, "row variable has no tupdesc");
				/* Make sure we have a valid type/typmod setting */
				FUNC0(row->rowtupdesc);
				oldcontext = FUNC4(FUNC11(estate));
				tup = FUNC13(estate, row, row->rowtupdesc);
				if (tup == NULL)	/* should not happen */
					FUNC5(ERROR, "row not compatible with its own tupdesc");
				*typeid = row->rowtupdesc->tdtypeid;
				*typetypmod = row->rowtupdesc->tdtypmod;
				*value = FUNC3(tup);
				*isnull = false;
				FUNC4(oldcontext);
				break;
			}

		case PLPGSQL_DTYPE_REC:
			{
				PLpgSQL_rec *rec = (PLpgSQL_rec *) datum;

				if (rec->erh == NULL)
				{
					/* Treat uninstantiated record as a simple NULL */
					*value = (Datum) 0;
					*isnull = true;
					/* Report variable's declared type */
					*typeid = rec->rectypeid;
					*typetypmod = -1;
				}
				else
				{
					if (FUNC2(rec->erh))
					{
						/* Empty record is also a NULL */
						*value = (Datum) 0;
						*isnull = true;
					}
					else
					{
						*value = FUNC1(rec->erh);
						*isnull = false;
					}
					if (rec->rectypeid != RECORDOID)
					{
						/* Report variable's declared type, if not RECORD */
						*typeid = rec->rectypeid;
						*typetypmod = -1;
					}
					else
					{
						/* Report record's actual type if declared RECORD */
						*typeid = rec->erh->er_typeid;
						*typetypmod = rec->erh->er_typmod;
					}
				}
				break;
			}

		case PLPGSQL_DTYPE_RECFIELD:
			{
				PLpgSQL_recfield *recfield = (PLpgSQL_recfield *) datum;
				PLpgSQL_rec *rec;
				ExpandedRecordHeader *erh;

				rec = (PLpgSQL_rec *) (estate->datums[recfield->recparentno]);
				erh = rec->erh;

				/*
				 * If record variable is NULL, instantiate it if it has a
				 * named composite type, else complain.  (This won't change
				 * the logical state of the record: it's still NULL.)
				 */
				if (erh == NULL)
				{
					FUNC12(estate, rec);
					erh = rec->erh;
				}

				/*
				 * Look up the field's properties if we have not already, or
				 * if the tuple descriptor ID changed since last time.
				 */
				if (FUNC15(recfield->rectupledescid != erh->er_tupdesc_id))
				{
					if (!FUNC10(erh,
													  recfield->fieldname,
													  &recfield->finfo))
						FUNC6(ERROR,
								(FUNC7(ERRCODE_UNDEFINED_COLUMN),
								 FUNC8("record \"%s\" has no field \"%s\"",
										rec->refname, recfield->fieldname)));
					recfield->rectupledescid = erh->er_tupdesc_id;
				}

				/* Report type data. */
				*typeid = recfield->finfo.ftypeid;
				*typetypmod = recfield->finfo.ftypmod;

				/* And fetch the field value. */
				*value = FUNC9(erh,
												   recfield->finfo.fnumber,
												   isnull);
				break;
			}

		default:
			FUNC5(ERROR, "unrecognized dtype: %d", datum->dtype);
	}
}