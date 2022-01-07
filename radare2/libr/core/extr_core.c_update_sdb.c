
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_18__ {int refs; } ;
struct TYPE_17__ {TYPE_8__* kv; } ;
struct TYPE_16__ {TYPE_4__* dbg; TYPE_3__* assembler; TYPE_10__* bin; TYPE_1__* anal; } ;
struct TYPE_15__ {TYPE_8__* sgnls; } ;
struct TYPE_14__ {TYPE_2__* syscall; } ;
struct TYPE_13__ {TYPE_8__* db; } ;
struct TYPE_12__ {TYPE_8__* sdb; } ;
struct TYPE_11__ {TYPE_8__* sdb; } ;
typedef int Sdb ;
typedef TYPE_5__ RCore ;
typedef TYPE_6__ RBinObject ;


 int * DB ;
 TYPE_6__* r_bin_cur_object (TYPE_10__*) ;
 int * sdb_ns (int *,char*,int) ;
 int sdb_ns_set (int *,char*,TYPE_8__*) ;

__attribute__((used)) static void update_sdb(RCore *core) {
 Sdb *d;
 RBinObject *o;
 if (!core) {
  return;
 }

 if (core->anal && core->anal->sdb) {
  sdb_ns_set (DB, "anal", core->anal->sdb);
 }

 if (core->bin && core->bin->sdb) {
  sdb_ns_set (DB, "bin", core->bin->sdb);
 }

 o = r_bin_cur_object (core->bin);
 if (o) {
  sdb_ns_set (sdb_ns (DB, "bin", 1), "info", o->kv);
 }



 if (core->assembler && core->assembler->syscall && core->assembler->syscall->db) {
  core->assembler->syscall->db->refs++;
  sdb_ns_set (DB, "syscall", core->assembler->syscall->db);
 }
 d = sdb_ns (DB, "debug", 1);
 if (core->dbg->sgnls) {
  core->dbg->sgnls->refs++;
  sdb_ns_set (d, "signals", core->dbg->sgnls);
 }
}
