
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_2__ {scalar_t__ typtype; int typtypmod; int typbasetype; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int elog (int ,char*,int ) ;

Oid
getBaseTypeAndTypmod(Oid typid, int32 *typmod)
{



 for (;;)
 {
  HeapTuple tup;
  Form_pg_type typTup;

  tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
  if (!HeapTupleIsValid(tup))
   elog(ERROR, "cache lookup failed for type %u", typid);
  typTup = (Form_pg_type) GETSTRUCT(tup);
  if (typTup->typtype != TYPTYPE_DOMAIN)
  {

   ReleaseSysCache(tup);
   break;
  }

  Assert(*typmod == -1);
  typid = typTup->typbasetype;
  *typmod = typTup->typtypmod;

  ReleaseSysCache(tup);
 }

 return typid;
}
