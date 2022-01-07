
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Bitmapset ;
typedef scalar_t__ AttrNumber ;
typedef int AclMode ;


 scalar_t__ ACLCHECK_OK ;
 int ACLMASK_ANY ;
 int ERROR ;
 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ InvalidAttrNumber ;
 scalar_t__ bms_is_empty (int *) ;
 int bms_next_member (int *,int) ;
 int elog (int ,char*) ;
 scalar_t__ pg_attribute_aclcheck (int ,scalar_t__,int ,int ) ;
 scalar_t__ pg_attribute_aclcheck_all (int ,int ,int ,int ) ;

__attribute__((used)) static bool
ExecCheckRTEPermsModified(Oid relOid, Oid userid, Bitmapset *modifiedCols,
        AclMode requiredPerms)
{
 int col = -1;






 if (bms_is_empty(modifiedCols))
 {
  if (pg_attribute_aclcheck_all(relOid, userid, requiredPerms,
           ACLMASK_ANY) != ACLCHECK_OK)
   return 0;
 }

 while ((col = bms_next_member(modifiedCols, col)) >= 0)
 {

  AttrNumber attno = col + FirstLowInvalidHeapAttributeNumber;

  if (attno == InvalidAttrNumber)
  {

   elog(ERROR, "whole-row update is not implemented");
  }
  else
  {
   if (pg_attribute_aclcheck(relOid, attno, userid,
           requiredPerms) != ACLCHECK_OK)
    return 0;
  }
 }
 return 1;
}
