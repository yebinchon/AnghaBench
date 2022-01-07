
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opfamily ;


 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int OpFamilyCacheLookup (int ,int *,int) ;
 int ReleaseSysCache (int ) ;

Oid
get_opfamily_oid(Oid amID, List *opfamilyname, bool missing_ok)
{
 HeapTuple htup;
 Form_pg_opfamily opfamform;
 Oid opfID;

 htup = OpFamilyCacheLookup(amID, opfamilyname, missing_ok);
 if (!HeapTupleIsValid(htup))
  return InvalidOid;
 opfamform = (Form_pg_opfamily) GETSTRUCT(htup);
 opfID = opfamform->oid;
 ReleaseSysCache(htup);

 return opfID;
}
