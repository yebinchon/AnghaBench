
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ typtype; int typrelid; int typbasetype; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


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
typeOrDomainTypeRelid(Oid type_id)
{
 HeapTuple typeTuple;
 Form_pg_type type;
 Oid result;

 for (;;)
 {
  typeTuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(type_id));
  if (!HeapTupleIsValid(typeTuple))
   elog(ERROR, "cache lookup failed for type %u", type_id);
  type = (Form_pg_type) GETSTRUCT(typeTuple);
  if (type->typtype != TYPTYPE_DOMAIN)
  {

   break;
  }

  type_id = type->typbasetype;
  ReleaseSysCache(typeTuple);
 }
 result = type->typrelid;
 ReleaseSysCache(typeTuple);
 return result;
}
