
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* ai_grantor; void* ai_grantee; } ;
typedef void* Oid ;
typedef int ObjectType ;
typedef scalar_t__ AclMode ;
typedef TYPE_1__ AclItem ;
typedef int Acl ;


 int ACLITEM_SET_PRIVS_GOPTIONS (TYPE_1__,scalar_t__,scalar_t__) ;
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
 scalar_t__ ACL_CONNECT ;
 scalar_t__ ACL_CREATE_TEMP ;
 TYPE_1__* ACL_DAT (int *) ;
 scalar_t__ ACL_EXECUTE ;
 void* ACL_ID_PUBLIC ;
 scalar_t__ ACL_NO_RIGHTS ;
 scalar_t__ ACL_USAGE ;
 int ERROR ;
 int * allocacl (int) ;
 int elog (int ,char*,int) ;

Acl *
acldefault(ObjectType objtype, Oid ownerId)
{
 AclMode world_default;
 AclMode owner_default;
 int nacl;
 Acl *acl;
 AclItem *aip;

 switch (objtype)
 {
  case 140:

   world_default = ACL_NO_RIGHTS;
   owner_default = ACL_NO_RIGHTS;
   break;
  case 130:
   world_default = ACL_NO_RIGHTS;
   owner_default = ACL_ALL_RIGHTS_RELATION;
   break;
  case 131:
   world_default = ACL_NO_RIGHTS;
   owner_default = ACL_ALL_RIGHTS_SEQUENCE;
   break;
  case 139:

   world_default = ACL_CREATE_TEMP | ACL_CONNECT;
   owner_default = ACL_ALL_RIGHTS_DATABASE;
   break;
  case 135:

   world_default = ACL_EXECUTE;
   owner_default = ACL_ALL_RIGHTS_FUNCTION;
   break;
  case 134:

   world_default = ACL_USAGE;
   owner_default = ACL_ALL_RIGHTS_LANGUAGE;
   break;
  case 133:
   world_default = ACL_NO_RIGHTS;
   owner_default = ACL_ALL_RIGHTS_LARGEOBJECT;
   break;
  case 132:
   world_default = ACL_NO_RIGHTS;
   owner_default = ACL_ALL_RIGHTS_SCHEMA;
   break;
  case 129:
   world_default = ACL_NO_RIGHTS;
   owner_default = ACL_ALL_RIGHTS_TABLESPACE;
   break;
  case 137:
   world_default = ACL_NO_RIGHTS;
   owner_default = ACL_ALL_RIGHTS_FDW;
   break;
  case 136:
   world_default = ACL_NO_RIGHTS;
   owner_default = ACL_ALL_RIGHTS_FOREIGN_SERVER;
   break;
  case 138:
  case 128:
   world_default = ACL_USAGE;
   owner_default = ACL_ALL_RIGHTS_TYPE;
   break;
  default:
   elog(ERROR, "unrecognized objtype: %d", (int) objtype);
   world_default = ACL_NO_RIGHTS;
   owner_default = ACL_NO_RIGHTS;
   break;
 }

 nacl = 0;
 if (world_default != ACL_NO_RIGHTS)
  nacl++;
 if (owner_default != ACL_NO_RIGHTS)
  nacl++;

 acl = allocacl(nacl);
 aip = ACL_DAT(acl);

 if (world_default != ACL_NO_RIGHTS)
 {
  aip->ai_grantee = ACL_ID_PUBLIC;
  aip->ai_grantor = ownerId;
  ACLITEM_SET_PRIVS_GOPTIONS(*aip, world_default, ACL_NO_RIGHTS);
  aip++;
 }
 if (owner_default != ACL_NO_RIGHTS)
 {
  aip->ai_grantee = ownerId;
  aip->ai_grantor = ownerId;
  ACLITEM_SET_PRIVS_GOPTIONS(*aip, owner_default, ACL_NO_RIGHTS);
 }

 return acl;
}
