
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opclass ;


 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int OpClassCacheLookup (int ,int *,int) ;
 int ReleaseSysCache (int ) ;

Oid
get_opclass_oid(Oid amID, List *opclassname, bool missing_ok)
{
 HeapTuple htup;
 Form_pg_opclass opcform;
 Oid opcID;

 htup = OpClassCacheLookup(amID, opclassname, missing_ok);
 if (!HeapTupleIsValid(htup))
  return InvalidOid;
 opcform = (Form_pg_opclass) GETSTRUCT(htup);
 opcID = opcform->oid;
 ReleaseSysCache(htup);

 return opcID;
}
