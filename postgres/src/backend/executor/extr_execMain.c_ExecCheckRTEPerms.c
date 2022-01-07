
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rtekind; int requiredPerms; int updatedCols; int insertedCols; int selectedCols; scalar_t__ checkAsUser; scalar_t__ relid; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef scalar_t__ Oid ;
typedef scalar_t__ AttrNumber ;
typedef int AclMode ;


 scalar_t__ ACLCHECK_OK ;
 int ACLMASK_ALL ;
 int ACLMASK_ANY ;
 int ACL_INSERT ;
 int ACL_SELECT ;
 int ACL_UPDATE ;
 int ExecCheckRTEPermsModified (scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ GetUserId () ;
 scalar_t__ InvalidAttrNumber ;
 scalar_t__ RTE_RELATION ;
 scalar_t__ bms_is_empty (int ) ;
 int bms_next_member (int ,int) ;
 scalar_t__ pg_attribute_aclcheck (scalar_t__,scalar_t__,scalar_t__,int) ;
 scalar_t__ pg_attribute_aclcheck_all (scalar_t__,scalar_t__,int,int ) ;
 int pg_class_aclmask (scalar_t__,scalar_t__,int,int ) ;

__attribute__((used)) static bool
ExecCheckRTEPerms(RangeTblEntry *rte)
{
 AclMode requiredPerms;
 AclMode relPerms;
 AclMode remainingPerms;
 Oid relOid;
 Oid userid;






 if (rte->rtekind != RTE_RELATION)
  return 1;




 requiredPerms = rte->requiredPerms;
 if (requiredPerms == 0)
  return 1;

 relOid = rte->relid;
 userid = rte->checkAsUser ? rte->checkAsUser : GetUserId();






 relPerms = pg_class_aclmask(relOid, userid, requiredPerms, ACLMASK_ALL);
 remainingPerms = requiredPerms & ~relPerms;
 if (remainingPerms != 0)
 {
  int col = -1;





  if (remainingPerms & ~(ACL_SELECT | ACL_INSERT | ACL_UPDATE))
   return 0;
  if (remainingPerms & ACL_SELECT)
  {





   if (bms_is_empty(rte->selectedCols))
   {
    if (pg_attribute_aclcheck_all(relOid, userid, ACL_SELECT,
             ACLMASK_ANY) != ACLCHECK_OK)
     return 0;
   }

   while ((col = bms_next_member(rte->selectedCols, col)) >= 0)
   {

    AttrNumber attno = col + FirstLowInvalidHeapAttributeNumber;

    if (attno == InvalidAttrNumber)
    {

     if (pg_attribute_aclcheck_all(relOid, userid, ACL_SELECT,
              ACLMASK_ALL) != ACLCHECK_OK)
      return 0;
    }
    else
    {
     if (pg_attribute_aclcheck(relOid, attno, userid,
             ACL_SELECT) != ACLCHECK_OK)
      return 0;
    }
   }
  }





  if (remainingPerms & ACL_INSERT && !ExecCheckRTEPermsModified(relOid,
                   userid,
                   rte->insertedCols,
                   ACL_INSERT))
   return 0;

  if (remainingPerms & ACL_UPDATE && !ExecCheckRTEPermsModified(relOid,
                   userid,
                   rte->updatedCols,
                   ACL_UPDATE))
   return 0;
 }
 return 1;
}
