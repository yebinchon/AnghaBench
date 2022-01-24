#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Var ;
typedef  int /*<<< orphan*/  TargetEntry ;
struct TYPE_9__ {int atttypmod; int /*<<< orphan*/  attname; int /*<<< orphan*/  attcollation; int /*<<< orphan*/  atttypid; scalar_t__ attisdropped; } ;
struct TYPE_8__ {TYPE_1__* rd_rel; int /*<<< orphan*/  rd_att; } ;
struct TYPE_7__ {int /*<<< orphan*/  reltype; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Index ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  INT4OID ; 
 int InvalidAttrNumber ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

List *
FUNC8(Relation targetrel,
								  Index exclRelIndex)
{
	List	   *result = NIL;
	int			attno;
	Var		   *var;
	TargetEntry *te;

	/*
	 * Note that resnos of the tlist must correspond to attnos of the
	 * underlying relation, hence we need entries for dropped columns too.
	 */
	for (attno = 0; attno < FUNC1(targetrel); attno++)
	{
		Form_pg_attribute attr = FUNC2(targetrel->rd_att, attno);
		char	   *name;

		if (attr->attisdropped)
		{
			/*
			 * can't use atttypid here, but it doesn't really matter what type
			 * the Const claims to be.
			 */
			var = (Var *) FUNC4(INT4OID, -1, InvalidOid);
			name = NULL;
		}
		else
		{
			var = FUNC6(exclRelIndex, attno + 1,
						  attr->atttypid, attr->atttypmod,
						  attr->attcollation,
						  0);
			name = FUNC7(FUNC0(attr->attname));
		}

		te = FUNC5((Expr *) var,
							 attno + 1,
							 name,
							 false);

		result = FUNC3(result, te);
	}

	/*
	 * Add a whole-row-Var entry to support references to "EXCLUDED.*".  Like
	 * the other entries in the EXCLUDED tlist, its resno must match the Var's
	 * varattno, else the wrong things happen while resolving references in
	 * setrefs.c.  This is against normal conventions for targetlists, but
	 * it's okay since we don't use this as a real tlist.
	 */
	var = FUNC6(exclRelIndex, InvalidAttrNumber,
				  targetrel->rd_rel->reltype,
				  -1, InvalidOid, 0);
	te = FUNC5((Expr *) var, InvalidAttrNumber, NULL, true);
	result = FUNC3(result, te);

	return result;
}