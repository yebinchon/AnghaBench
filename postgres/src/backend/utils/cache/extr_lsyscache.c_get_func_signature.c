
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dim1; int values; } ;
struct TYPE_4__ {TYPE_1__ proargtypes; scalar_t__ pronargs; int prorettype; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ palloc (int) ;

Oid
get_func_signature(Oid funcid, Oid **argtypes, int *nargs)
{
 HeapTuple tp;
 Form_pg_proc procstruct;
 Oid result;

 tp = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcid));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for function %u", funcid);

 procstruct = (Form_pg_proc) GETSTRUCT(tp);

 result = procstruct->prorettype;
 *nargs = (int) procstruct->pronargs;
 Assert(*nargs == procstruct->proargtypes.dim1);
 *argtypes = (Oid *) palloc(*nargs * sizeof(Oid));
 memcpy(*argtypes, procstruct->proargtypes.values, *nargs * sizeof(Oid));

 ReleaseSysCache(tp);
 return result;
}
