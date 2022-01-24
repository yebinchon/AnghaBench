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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  int16 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_7__ {int /*<<< orphan*/  attlen; int /*<<< orphan*/  attname; int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; } ;
struct TYPE_6__ {int natts; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(StringInfo buf, TupleDesc typeinfo, List *targetlist, int16 *formats)
{
	int			natts = typeinfo->natts;
	int			i;

	for (i = 0; i < natts; ++i)
	{
		Form_pg_attribute att = FUNC1(typeinfo, i);
		Oid			atttypid = att->atttypid;
		int32		atttypmod = att->atttypmod;

		/* If column is a domain, send the base type and typmod instead */
		atttypid = FUNC2(atttypid, &atttypmod);

		FUNC5(buf, FUNC0(att->attname));
		/* column ID only info appears in protocol 3.0 and up */
		FUNC4(buf, atttypid);
		FUNC3(buf, att->attlen);
		FUNC4(buf, atttypmod);
		/* format info only appears in protocol 3.0 and up */
	}
}