#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  reldesc ;
struct TYPE_6__ {int nrels; TYPE_2__* rels; } ;
struct TYPE_8__ {int /*<<< orphan*/  db_name; TYPE_1__ rel_arr; } ;
struct TYPE_7__ {scalar_t__ reloid; char* nspname; char* relname; scalar_t__ indtable; scalar_t__ toastheap; } ;
typedef  TYPE_2__ RelInfo ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__ DbInfo ;

/* Variables and functions */
 int /*<<< orphan*/  PG_WARNING ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,scalar_t__,...) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(const RelInfo *rel, const DbInfo *db, bool is_new_db)
{
	Oid			reloid = rel->reloid;	/* we might change rel below */
	char		reldesc[1000];
	int			i;

	FUNC2(reldesc, sizeof(reldesc), "\"%s.%s\"",
			 rel->nspname, rel->relname);
	if (rel->indtable)
	{
		for (i = 0; i < db->rel_arr.nrels; i++)
		{
			const RelInfo *hrel = &db->rel_arr.rels[i];

			if (hrel->reloid == rel->indtable)
			{
				FUNC2(reldesc + FUNC3(reldesc),
						 sizeof(reldesc) - FUNC3(reldesc),
						 FUNC0(" which is an index on \"%s.%s\""),
						 hrel->nspname, hrel->relname);
				/* Shift attention to index's table for toast check */
				rel = hrel;
				break;
			}
		}
		if (i >= db->rel_arr.nrels)
			FUNC2(reldesc + FUNC3(reldesc),
					 sizeof(reldesc) - FUNC3(reldesc),
					 FUNC0(" which is an index on OID %u"), rel->indtable);
	}
	if (rel->toastheap)
	{
		for (i = 0; i < db->rel_arr.nrels; i++)
		{
			const RelInfo *brel = &db->rel_arr.rels[i];

			if (brel->reloid == rel->toastheap)
			{
				FUNC2(reldesc + FUNC3(reldesc),
						 sizeof(reldesc) - FUNC3(reldesc),
						 FUNC0(" which is the TOAST table for \"%s.%s\""),
						 brel->nspname, brel->relname);
				break;
			}
		}
		if (i >= db->rel_arr.nrels)
			FUNC2(reldesc + FUNC3(reldesc),
					 sizeof(reldesc) - FUNC3(reldesc),
					 FUNC0(" which is the TOAST table for OID %u"), rel->toastheap);
	}

	if (is_new_db)
		FUNC1(PG_WARNING, "No match found in old cluster for new relation with OID %u in database \"%s\": %s\n",
			   reloid, db->db_name, reldesc);
	else
		FUNC1(PG_WARNING, "No match found in new cluster for old relation with OID %u in database \"%s\": %s\n",
			   reloid, db->db_name, reldesc);
}