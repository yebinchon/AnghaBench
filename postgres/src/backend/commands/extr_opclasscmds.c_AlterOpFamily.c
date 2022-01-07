
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int items; scalar_t__ isDrop; int opfamilyname; int amname; } ;
struct TYPE_9__ {int oid; } ;
struct TYPE_8__ {int amstrategies; int amsupport; } ;
typedef int Oid ;
typedef TYPE_1__ IndexAmRoutine ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_am ;
typedef TYPE_3__ AlterOpFamilyStmt ;


 int AMNAME ;
 int AlterOpFamilyAdd (TYPE_3__*,int ,int ,int,int,int ) ;
 int AlterOpFamilyDrop (TYPE_3__*,int ,int ,int,int,int ) ;
 int CStringGetDatum (int ) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_1__* GetIndexAmRoutineByAmId (int ,int) ;
 int HeapTupleIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SHRT_MAX ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_opfamily_oid (int ,int ,int) ;
 int superuser () ;

Oid
AlterOpFamily(AlterOpFamilyStmt *stmt)
{
 Oid amoid,
    opfamilyoid;
 int maxOpNumber,
    maxProcNumber;
 HeapTuple tup;
 Form_pg_am amform;
 IndexAmRoutine *amroutine;


 tup = SearchSysCache1(AMNAME, CStringGetDatum(stmt->amname));
 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("access method \"%s\" does not exist",
      stmt->amname)));

 amform = (Form_pg_am) GETSTRUCT(tup);
 amoid = amform->oid;
 amroutine = GetIndexAmRoutineByAmId(amoid, 0);
 ReleaseSysCache(tup);

 maxOpNumber = amroutine->amstrategies;

 if (maxOpNumber <= 0)
  maxOpNumber = SHRT_MAX;
 maxProcNumber = amroutine->amsupport;




 opfamilyoid = get_opfamily_oid(amoid, stmt->opfamilyname, 0);






 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("must be superuser to alter an operator family")));




 if (stmt->isDrop)
  AlterOpFamilyDrop(stmt, amoid, opfamilyoid,
        maxOpNumber, maxProcNumber, stmt->items);
 else
  AlterOpFamilyAdd(stmt, amoid, opfamilyoid,
       maxOpNumber, maxProcNumber, stmt->items);

 return opfamilyoid;
}
