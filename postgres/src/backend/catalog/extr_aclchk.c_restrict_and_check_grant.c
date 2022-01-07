
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ObjectType ;
typedef int AttrNumber ;
typedef scalar_t__ AclMode ;


 int ACLCHECK_NO_PRIV ;
 int ACLMASK_ANY ;
 scalar_t__ ACL_ALL_RIGHTS_COLUMN ;
 scalar_t__ ACL_ALL_RIGHTS_DATABASE ;
 scalar_t__ ACL_ALL_RIGHTS_FDW ;
 scalar_t__ ACL_ALL_RIGHTS_FOREIGN_SERVER ;
 scalar_t__ ACL_ALL_RIGHTS_FUNCTION ;
 scalar_t__ ACL_ALL_RIGHTS_LANGUAGE ;
 scalar_t__ ACL_ALL_RIGHTS_LARGEOBJECT ;
 scalar_t__ ACL_ALL_RIGHTS_RELATION ;
 scalar_t__ ACL_ALL_RIGHTS_SCHEMA ;
 scalar_t__ ACL_ALL_RIGHTS_SEQUENCE ;
 scalar_t__ ACL_ALL_RIGHTS_TABLESPACE ;
 scalar_t__ ACL_ALL_RIGHTS_TYPE ;
 scalar_t__ ACL_GRANT_OPTION_FOR (scalar_t__) ;
 scalar_t__ ACL_NO_RIGHTS ;
 scalar_t__ ACL_OPTION_TO_PRIVS (scalar_t__) ;
 int ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED ;
 int ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED ;
 int ERROR ;
 int WARNING ;
 int aclcheck_error (int ,int,char const*) ;
 int aclcheck_error_col (int ,int,char const*,char const*) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 scalar_t__ pg_aclmask (int,int ,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static AclMode
restrict_and_check_grant(bool is_grant, AclMode avail_goptions, bool all_privs,
       AclMode privileges, Oid objectId, Oid grantorId,
       ObjectType objtype, const char *objname,
       AttrNumber att_number, const char *colname)
{
 AclMode this_privileges;
 AclMode whole_mask;

 switch (objtype)
 {
  case 140:
   whole_mask = ACL_ALL_RIGHTS_COLUMN;
   break;
  case 130:
   whole_mask = ACL_ALL_RIGHTS_RELATION;
   break;
  case 131:
   whole_mask = ACL_ALL_RIGHTS_SEQUENCE;
   break;
  case 139:
   whole_mask = ACL_ALL_RIGHTS_DATABASE;
   break;
  case 135:
   whole_mask = ACL_ALL_RIGHTS_FUNCTION;
   break;
  case 134:
   whole_mask = ACL_ALL_RIGHTS_LANGUAGE;
   break;
  case 133:
   whole_mask = ACL_ALL_RIGHTS_LARGEOBJECT;
   break;
  case 132:
   whole_mask = ACL_ALL_RIGHTS_SCHEMA;
   break;
  case 129:
   whole_mask = ACL_ALL_RIGHTS_TABLESPACE;
   break;
  case 137:
   whole_mask = ACL_ALL_RIGHTS_FDW;
   break;
  case 136:
   whole_mask = ACL_ALL_RIGHTS_FOREIGN_SERVER;
   break;
  case 138:
   elog(ERROR, "grantable rights not supported for event triggers");

   return ACL_NO_RIGHTS;
  case 128:
   whole_mask = ACL_ALL_RIGHTS_TYPE;
   break;
  default:
   elog(ERROR, "unrecognized object type: %d", objtype);

   return ACL_NO_RIGHTS;
 }






 if (avail_goptions == ACL_NO_RIGHTS)
 {
  if (pg_aclmask(objtype, objectId, att_number, grantorId,
        whole_mask | ACL_GRANT_OPTION_FOR(whole_mask),
        ACLMASK_ANY) == ACL_NO_RIGHTS)
  {
   if (objtype == 140 && colname)
    aclcheck_error_col(ACLCHECK_NO_PRIV, objtype, objname, colname);
   else
    aclcheck_error(ACLCHECK_NO_PRIV, objtype, objname);
  }
 }
 this_privileges = privileges & ACL_OPTION_TO_PRIVS(avail_goptions);
 if (is_grant)
 {
  if (this_privileges == 0)
  {
   if (objtype == 140 && colname)
    ereport(WARNING,
      (errcode(ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED),
       errmsg("no privileges were granted for column \"%s\" of relation \"%s\"",
        colname, objname)));
   else
    ereport(WARNING,
      (errcode(ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED),
       errmsg("no privileges were granted for \"%s\"",
        objname)));
  }
  else if (!all_privs && this_privileges != privileges)
  {
   if (objtype == 140 && colname)
    ereport(WARNING,
      (errcode(ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED),
       errmsg("not all privileges were granted for column \"%s\" of relation \"%s\"",
        colname, objname)));
   else
    ereport(WARNING,
      (errcode(ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED),
       errmsg("not all privileges were granted for \"%s\"",
        objname)));
  }
 }
 else
 {
  if (this_privileges == 0)
  {
   if (objtype == 140 && colname)
    ereport(WARNING,
      (errcode(ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED),
       errmsg("no privileges could be revoked for column \"%s\" of relation \"%s\"",
        colname, objname)));
   else
    ereport(WARNING,
      (errcode(ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED),
       errmsg("no privileges could be revoked for \"%s\"",
        objname)));
  }
  else if (!all_privs && this_privileges != privileges)
  {
   if (objtype == 140 && colname)
    ereport(WARNING,
      (errcode(ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED),
       errmsg("not all privileges could be revoked for column \"%s\" of relation \"%s\"",
        colname, objname)));
   else
    ereport(WARNING,
      (errcode(ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED),
       errmsg("not all privileges could be revoked for \"%s\"",
        objname)));
  }
 }

 return this_privileges;
}
