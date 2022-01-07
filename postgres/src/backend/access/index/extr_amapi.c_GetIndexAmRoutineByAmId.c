
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int regproc ;
struct TYPE_2__ {scalar_t__ amtype; int amname; int amhandler; } ;
typedef int Oid ;
typedef int IndexAmRoutine ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_am ;


 int AMOID ;
 scalar_t__ AMTYPE_INDEX ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int * GetIndexAmRoutine (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RegProcedureIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;

IndexAmRoutine *
GetIndexAmRoutineByAmId(Oid amoid, bool noerror)
{
 HeapTuple tuple;
 Form_pg_am amform;
 regproc amhandler;


 tuple = SearchSysCache1(AMOID, ObjectIdGetDatum(amoid));
 if (!HeapTupleIsValid(tuple))
 {
  if (noerror)
   return ((void*)0);
  elog(ERROR, "cache lookup failed for access method %u",
    amoid);
 }
 amform = (Form_pg_am) GETSTRUCT(tuple);


 if (amform->amtype != AMTYPE_INDEX)
 {
  if (noerror)
  {
   ReleaseSysCache(tuple);
   return ((void*)0);
  }
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("access method \"%s\" is not of type %s",
      NameStr(amform->amname), "INDEX")));
 }

 amhandler = amform->amhandler;


 if (!RegProcedureIsValid(amhandler))
 {
  if (noerror)
  {
   ReleaseSysCache(tuple);
   return ((void*)0);
  }
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("index access method \"%s\" does not have a handler",
      NameStr(amform->amname))));
 }

 ReleaseSysCache(tuple);


 return GetIndexAmRoutine(amhandler);
}
