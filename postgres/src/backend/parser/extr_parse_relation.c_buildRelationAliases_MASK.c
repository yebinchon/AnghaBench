#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Value ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_11__ {void* colnames; int /*<<< orphan*/  aliasname; } ;
struct TYPE_10__ {int /*<<< orphan*/  attname; scalar_t__ attisdropped; } ;
struct TYPE_9__ {int natts; } ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  void List ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  TYPE_3__ Alias ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_COLUMN_REFERENCE ; 
 int /*<<< orphan*/  ERROR ; 
 void* NIL ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC6 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (void*) ; 
 int FUNC9 (void*) ; 
 int /*<<< orphan*/ * FUNC10 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(TupleDesc tupdesc, Alias *alias, Alias *eref)
{
	int			maxattrs = tupdesc->natts;
	List	   *aliaslist;
	ListCell   *aliaslc;
	int			numaliases;
	int			varattno;
	int			numdropped = 0;

	FUNC0(eref->colnames == NIL);

	if (alias)
	{
		aliaslist = alias->colnames;
		aliaslc = FUNC8(aliaslist);
		numaliases = FUNC9(aliaslist);
		/* We'll rebuild the alias colname list */
		alias->colnames = NIL;
	}
	else
	{
		aliaslist = NIL;
		aliaslc = NULL;
		numaliases = 0;
	}

	for (varattno = 0; varattno < maxattrs; varattno++)
	{
		Form_pg_attribute attr = FUNC2(tupdesc, varattno);
		Value	   *attrname;

		if (attr->attisdropped)
		{
			/* Always insert an empty string for a dropped column */
			attrname = FUNC11(FUNC12(""));
			if (aliaslc)
				alias->colnames = FUNC6(alias->colnames, attrname);
			numdropped++;
		}
		else if (aliaslc)
		{
			/* Use the next user-supplied alias */
			attrname = (Value *) FUNC7(aliaslc);
			aliaslc = FUNC10(aliaslist, aliaslc);
			alias->colnames = FUNC6(alias->colnames, attrname);
		}
		else
		{
			attrname = FUNC11(FUNC12(FUNC1(attr->attname)));
			/* we're done with the alias if any */
		}

		eref->colnames = FUNC6(eref->colnames, attrname);
	}

	/* Too many user-supplied aliases? */
	if (aliaslc)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_COLUMN_REFERENCE),
				 FUNC5("table \"%s\" has %d columns available but %d columns specified",
						eref->aliasname, maxattrs - numdropped, numaliases)));
}