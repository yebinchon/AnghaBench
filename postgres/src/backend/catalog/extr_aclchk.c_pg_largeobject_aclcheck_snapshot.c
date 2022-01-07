
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Snapshot ;
typedef int Oid ;
typedef int AclResult ;
typedef int AclMode ;


 int ACLCHECK_NO_PRIV ;
 int ACLCHECK_OK ;
 int ACLMASK_ANY ;
 scalar_t__ pg_largeobject_aclmask_snapshot (int ,int ,int ,int ,int ) ;

AclResult
pg_largeobject_aclcheck_snapshot(Oid lobj_oid, Oid roleid, AclMode mode,
         Snapshot snapshot)
{
 if (pg_largeobject_aclmask_snapshot(lobj_oid, roleid, mode,
          ACLMASK_ANY, snapshot) != 0)
  return ACLCHECK_OK;
 else
  return ACLCHECK_NO_PRIV;
}
