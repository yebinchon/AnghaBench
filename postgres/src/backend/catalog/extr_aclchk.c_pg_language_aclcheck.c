
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int AclResult ;
typedef int AclMode ;


 int ACLCHECK_NO_PRIV ;
 int ACLCHECK_OK ;
 int ACLMASK_ANY ;
 scalar_t__ pg_language_aclmask (int ,int ,int ,int ) ;

AclResult
pg_language_aclcheck(Oid lang_oid, Oid roleid, AclMode mode)
{
 if (pg_language_aclmask(lang_oid, roleid, mode, ACLMASK_ANY) != 0)
  return ACLCHECK_OK;
 else
  return ACLCHECK_NO_PRIV;
}
