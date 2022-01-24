#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * attnames; int /*<<< orphan*/  relname; int /*<<< orphan*/  nspname; int /*<<< orphan*/ * atttyps; } ;
struct TYPE_6__ {TYPE_1__ remoterel; int /*<<< orphan*/  localreloid; } ;
struct TYPE_5__ {size_t remote_attnum; scalar_t__ local_attnum; TYPE_3__* rel; } ;
typedef  TYPE_2__ SlotErrCallbackArg ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ LogicalRepRelMapEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	SlotErrCallbackArg *errarg = (SlotErrCallbackArg *) arg;
	LogicalRepRelMapEntry *rel;
	char	   *remotetypname;
	Oid			remotetypoid,
				localtypoid;

	/* Nothing to do if remote attribute number is not set */
	if (errarg->remote_attnum < 0)
		return;

	rel = errarg->rel;
	remotetypoid = rel->remoterel.atttyps[errarg->remote_attnum];

	/* Fetch remote type name from the LogicalRepTypMap cache */
	remotetypname = FUNC3(remotetypoid);

	/* Fetch local type OID from the local sys cache */
	localtypoid = FUNC2(rel->localreloid, errarg->local_attnum + 1);

	FUNC0("processing remote data for replication target relation \"%s.%s\" column \"%s\", "
			   "remote type %s, local type %s",
			   rel->remoterel.nspname, rel->remoterel.relname,
			   rel->remoterel.attnames[errarg->remote_attnum],
			   remotetypname,
			   FUNC1(localtypoid));
}