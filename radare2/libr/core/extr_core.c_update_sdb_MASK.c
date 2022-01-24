#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  refs; } ;
struct TYPE_17__ {TYPE_8__* kv; } ;
struct TYPE_16__ {TYPE_4__* dbg; TYPE_3__* assembler; TYPE_10__* bin; TYPE_1__* anal; } ;
struct TYPE_15__ {TYPE_8__* sgnls; } ;
struct TYPE_14__ {TYPE_2__* syscall; } ;
struct TYPE_13__ {TYPE_8__* db; } ;
struct TYPE_12__ {TYPE_8__* sdb; } ;
struct TYPE_11__ {TYPE_8__* sdb; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_5__ RCore ;
typedef  TYPE_6__ RBinObject ;

/* Variables and functions */
 int /*<<< orphan*/ * DB ; 
 TYPE_6__* FUNC0 (TYPE_10__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,TYPE_8__*) ; 

__attribute__((used)) static void FUNC3(RCore *core) {
	Sdb *d;
	RBinObject *o;
	if (!core) {
		return;
	}
	//SDB// anal/
	if (core->anal && core->anal->sdb) {
		FUNC2 (DB, "anal", core->anal->sdb);
	}
	//SDB// bin/
	if (core->bin && core->bin->sdb) {
		FUNC2 (DB, "bin", core->bin->sdb);
	}
	//SDB// bin/info
	o = FUNC0 (core->bin);
	if (o) {
		FUNC2 (FUNC1 (DB, "bin", 1), "info", o->kv);
	}
	//sdb_ns_set (core->sdb, "flags", core->flags->sdb);
	//sdb_ns_set (core->sdb, "bin", core->bin->sdb);
	//SDB// syscall/
	if (core->assembler && core->assembler->syscall && core->assembler->syscall->db) {
		core->assembler->syscall->db->refs++;
		FUNC2 (DB, "syscall", core->assembler->syscall->db);
	}
	d = FUNC1 (DB, "debug", 1);
	if (core->dbg->sgnls) {
		core->dbg->sgnls->refs++;
		FUNC2 (d, "signals", core->dbg->sgnls);
	}
}