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
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ uint16 ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_14__ {int atttypmod; scalar_t__ atttypid; int /*<<< orphan*/  attname; scalar_t__ attnum; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {int natts; } ;
struct TYPE_11__ {scalar_t__ relreplident; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_3__* Relation ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 scalar_t__ FirstLowInvalidHeapAttributeNumber ; 
 int /*<<< orphan*/  INDEX_ATTR_BITMAP_IDENTITY_KEY ; 
 int /*<<< orphan*/  LOGICALREP_IS_REPLICA_IDENTITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REPLICA_IDENTITY_FULL ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(StringInfo out, Relation rel)
{
	TupleDesc	desc;
	int			i;
	uint16		nliveatts = 0;
	Bitmapset  *idattrs = NULL;
	bool		replidentfull;

	desc = FUNC1(rel);

	/* send number of live attributes */
	for (i = 0; i < desc->natts; i++)
	{
		if (FUNC3(desc, i)->attisdropped || FUNC3(desc, i)->attgenerated)
			continue;
		nliveatts++;
	}
	FUNC7(out, nliveatts);

	/* fetch bitmap of REPLICATION IDENTITY attributes */
	replidentfull = (rel->rd_rel->relreplident == REPLICA_IDENTITY_FULL);
	if (!replidentfull)
		idattrs = FUNC2(rel,
											 INDEX_ATTR_BITMAP_IDENTITY_KEY);

	/* send the attributes */
	for (i = 0; i < desc->natts; i++)
	{
		Form_pg_attribute att = FUNC3(desc, i);
		uint8		flags = 0;

		if (att->attisdropped || att->attgenerated)
			continue;

		/* REPLICA IDENTITY FULL means all columns are sent as part of key. */
		if (replidentfull ||
			FUNC5(att->attnum - FirstLowInvalidHeapAttributeNumber,
						  idattrs))
			flags |= LOGICALREP_IS_REPLICA_IDENTITY;

		FUNC6(out, flags);

		/* attribute name */
		FUNC9(out, FUNC0(att->attname));

		/* attribute type id */
		FUNC8(out, (int) att->atttypid);

		/* attribute mode */
		FUNC8(out, att->atttypmod);
	}

	FUNC4(idattrs);
}