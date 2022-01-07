
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ typtype; int typlen; int typbasetype; int typelem; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 scalar_t__ TYPTYPE_DOMAIN ;

Oid
get_base_element_type(Oid typid)
{



 for (;;)
 {
  HeapTuple tup;
  Form_pg_type typTup;

  tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
  if (!HeapTupleIsValid(tup))
   break;
  typTup = (Form_pg_type) GETSTRUCT(tup);
  if (typTup->typtype != TYPTYPE_DOMAIN)
  {

   Oid result;


   if (typTup->typlen == -1)
    result = typTup->typelem;
   else
    result = InvalidOid;
   ReleaseSysCache(tup);
   return result;
  }

  typid = typTup->typbasetype;
  ReleaseSysCache(tup);
 }


 return InvalidOid;
}
