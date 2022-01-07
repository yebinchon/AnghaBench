
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ObjectType ;
typedef int AttrNumber ;
typedef int AclMode ;
typedef int AclMaskHow ;


 int ACL_NO_RIGHTS ;
 int ERROR ;
 int elog (int ,char*,...) ;
 int pg_attribute_aclmask (int ,int ,int ,int,int ) ;
 int pg_class_aclmask (int ,int ,int,int ) ;
 int pg_database_aclmask (int ,int ,int,int ) ;
 int pg_foreign_data_wrapper_aclmask (int ,int ,int,int ) ;
 int pg_foreign_server_aclmask (int ,int ,int,int ) ;
 int pg_language_aclmask (int ,int ,int,int ) ;
 int pg_largeobject_aclmask_snapshot (int ,int ,int,int ,int *) ;
 int pg_namespace_aclmask (int ,int ,int,int ) ;
 int pg_proc_aclmask (int ,int ,int,int ) ;
 int pg_tablespace_aclmask (int ,int ,int,int ) ;
 int pg_type_aclmask (int ,int ,int,int ) ;

__attribute__((used)) static AclMode
pg_aclmask(ObjectType objtype, Oid table_oid, AttrNumber attnum, Oid roleid,
     AclMode mask, AclMaskHow how)
{
 switch (objtype)
 {
  case 141:
   return
    pg_class_aclmask(table_oid, roleid, mask, how) |
    pg_attribute_aclmask(table_oid, attnum, roleid, mask, how);
  case 130:
  case 132:
   return pg_class_aclmask(table_oid, roleid, mask, how);
  case 140:
   return pg_database_aclmask(table_oid, roleid, mask, how);
  case 136:
   return pg_proc_aclmask(table_oid, roleid, mask, how);
  case 135:
   return pg_language_aclmask(table_oid, roleid, mask, how);
  case 134:
   return pg_largeobject_aclmask_snapshot(table_oid, roleid,
               mask, how, ((void*)0));
  case 133:
   return pg_namespace_aclmask(table_oid, roleid, mask, how);
  case 131:
   elog(ERROR, "grantable rights not supported for statistics objects");

   return ACL_NO_RIGHTS;
  case 129:
   return pg_tablespace_aclmask(table_oid, roleid, mask, how);
  case 138:
   return pg_foreign_data_wrapper_aclmask(table_oid, roleid, mask, how);
  case 137:
   return pg_foreign_server_aclmask(table_oid, roleid, mask, how);
  case 139:
   elog(ERROR, "grantable rights not supported for event triggers");

   return ACL_NO_RIGHTS;
  case 128:
   return pg_type_aclmask(table_oid, roleid, mask, how);
  default:
   elog(ERROR, "unrecognized objtype: %d",
     (int) objtype);

   return ACL_NO_RIGHTS;
 }
}
