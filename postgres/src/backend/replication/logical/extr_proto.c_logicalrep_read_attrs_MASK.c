#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_3__ {char** attnames; int natts; int /*<<< orphan*/ * attkeys; scalar_t__* atttyps; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ LogicalRepRelation ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int LOGICALREP_IS_REPLICA_IDENTITY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(StringInfo in, LogicalRepRelation *rel)
{
	int			i;
	int			natts;
	char	  **attnames;
	Oid		   *atttyps;
	Bitmapset  *attkeys = NULL;

	natts = FUNC3(in, 2);
	attnames = FUNC1(natts * sizeof(char *));
	atttyps = FUNC1(natts * sizeof(Oid));

	/* read the attributes */
	for (i = 0; i < natts; i++)
	{
		uint8		flags;

		/* Check for replica identity column */
		flags = FUNC2(in);
		if (flags & LOGICALREP_IS_REPLICA_IDENTITY)
			attkeys = FUNC0(attkeys, i);

		/* attribute name */
		attnames[i] = FUNC5(FUNC4(in));

		/* attribute type id */
		atttyps[i] = (Oid) FUNC3(in, 4);

		/* we ignore attribute mode for now */
		(void) FUNC3(in, 4);
	}

	rel->attnames = attnames;
	rel->atttyps = atttyps;
	rel->attkeys = attkeys;
	rel->natts = natts;
}