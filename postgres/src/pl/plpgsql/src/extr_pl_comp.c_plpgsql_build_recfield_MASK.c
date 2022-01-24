#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int firstfield; scalar_t__ dno; } ;
struct TYPE_6__ {scalar_t__ dtype; scalar_t__ recparentno; int nextfield; int dno; int /*<<< orphan*/  rectupledescid; int /*<<< orphan*/  fieldname; } ;
typedef  TYPE_1__ PLpgSQL_recfield ;
typedef  TYPE_2__ PLpgSQL_rec ;
typedef  int /*<<< orphan*/  PLpgSQL_datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INVALID_TUPLEDESC_IDENTIFIER ; 
 scalar_t__ PLPGSQL_DTYPE_RECFIELD ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__* plpgsql_Datums ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 

PLpgSQL_recfield *
FUNC5(PLpgSQL_rec *rec, const char *fldname)
{
	PLpgSQL_recfield *recfield;
	int			i;

	/* search for an existing datum referencing this field */
	i = rec->firstfield;
	while (i >= 0)
	{
		PLpgSQL_recfield *fld = (PLpgSQL_recfield *) plpgsql_Datums[i];

		FUNC0(fld->dtype == PLPGSQL_DTYPE_RECFIELD &&
			   fld->recparentno == rec->dno);
		if (FUNC4(fld->fieldname, fldname) == 0)
			return fld;
		i = fld->nextfield;
	}

	/* nope, so make a new one */
	recfield = FUNC1(sizeof(PLpgSQL_recfield));
	recfield->dtype = PLPGSQL_DTYPE_RECFIELD;
	recfield->fieldname = FUNC3(fldname);
	recfield->recparentno = rec->dno;
	recfield->rectupledescid = INVALID_TUPLEDESC_IDENTIFIER;

	FUNC2((PLpgSQL_datum *) recfield);

	/* now we can link it into the parent's chain */
	recfield->nextfield = rec->firstfield;
	rec->firstfield = recfield->dno;

	return recfield;
}