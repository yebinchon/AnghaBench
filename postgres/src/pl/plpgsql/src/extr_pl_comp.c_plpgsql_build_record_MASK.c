#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int lineno; int firstfield; int /*<<< orphan*/  refname; int /*<<< orphan*/  dno; int /*<<< orphan*/ * erh; int /*<<< orphan*/  rectypeid; int /*<<< orphan*/ * datatype; int /*<<< orphan*/  dtype; } ;
typedef  int /*<<< orphan*/  PLpgSQL_type ;
typedef  TYPE_1__ PLpgSQL_rec ;
typedef  int /*<<< orphan*/  PLpgSQL_datum ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  PLPGSQL_DTYPE_REC ; 
 int /*<<< orphan*/  PLPGSQL_NSTYPE_REC ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

PLpgSQL_rec *
FUNC4(const char *refname, int lineno,
					 PLpgSQL_type *dtype, Oid rectypeid,
					 bool add2namespace)
{
	PLpgSQL_rec *rec;

	rec = FUNC0(sizeof(PLpgSQL_rec));
	rec->dtype = PLPGSQL_DTYPE_REC;
	rec->refname = FUNC3(refname);
	rec->lineno = lineno;
	/* other fields are left as 0, might be changed by caller */
	rec->datatype = dtype;
	rec->rectypeid = rectypeid;
	rec->firstfield = -1;
	rec->erh = NULL;
	FUNC1((PLpgSQL_datum *) rec);
	if (add2namespace)
		FUNC2(PLPGSQL_NSTYPE_REC, rec->dno, rec->refname);

	return rec;
}