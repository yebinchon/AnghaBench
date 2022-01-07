
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int AttrNumber ;
typedef int AclResult ;
typedef int AclMode ;


 int ACLCHECK_NO_PRIV ;
 int ACLCHECK_OK ;
 int ACLMASK_ANY ;
 scalar_t__ pg_attribute_aclmask (int ,int ,int ,int ,int ) ;

AclResult
pg_attribute_aclcheck(Oid table_oid, AttrNumber attnum,
       Oid roleid, AclMode mode)
{
 if (pg_attribute_aclmask(table_oid, attnum, roleid, mode, ACLMASK_ANY) != 0)
  return ACLCHECK_OK;
 else
  return ACLCHECK_NO_PRIV;
}
