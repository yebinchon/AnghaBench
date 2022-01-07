
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef int AttrNumber ;


 int DEPENDENCY_INTERNAL ;
 int ERROR ;
 int InvalidOid ;
 int elog (int ,char*) ;
 int * getOwnedSequences_internal (int ,int ,int ) ;
 int linitial_oid (int *) ;
 int list_length (int *) ;

Oid
getIdentitySequence(Oid relid, AttrNumber attnum, bool missing_ok)
{
 List *seqlist = getOwnedSequences_internal(relid, attnum, DEPENDENCY_INTERNAL);

 if (list_length(seqlist) > 1)
  elog(ERROR, "more than one owned sequence found");
 else if (list_length(seqlist) < 1)
 {
  if (missing_ok)
   return InvalidOid;
  else
   elog(ERROR, "no owned sequence found");
 }

 return linitial_oid(seqlist);
}
