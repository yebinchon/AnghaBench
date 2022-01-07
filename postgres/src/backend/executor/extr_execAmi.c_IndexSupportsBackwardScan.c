
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int relam; } ;
struct TYPE_5__ {int amcanbackward; } ;
typedef int Oid ;
typedef TYPE_1__ IndexAmRoutine ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_class ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_1__* GetIndexAmRoutineByAmId (int ,int) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static bool
IndexSupportsBackwardScan(Oid indexid)
{
 bool result;
 HeapTuple ht_idxrel;
 Form_pg_class idxrelrec;
 IndexAmRoutine *amroutine;


 ht_idxrel = SearchSysCache1(RELOID, ObjectIdGetDatum(indexid));
 if (!HeapTupleIsValid(ht_idxrel))
  elog(ERROR, "cache lookup failed for relation %u", indexid);
 idxrelrec = (Form_pg_class) GETSTRUCT(ht_idxrel);


 amroutine = GetIndexAmRoutineByAmId(idxrelrec->relam, 0);

 result = amroutine->amcanbackward;

 pfree(amroutine);
 ReleaseSysCache(ht_idxrel);

 return result;
}
