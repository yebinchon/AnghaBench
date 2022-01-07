
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int roletype; int rolename; } ;
typedef TYPE_1__ RoleSpec ;
typedef int Oid ;


 int Assert (int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GetSessionUserId () ;
 int GetUserId () ;
 int InvalidOid ;




 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int get_role_oid (int ,int) ;

Oid
get_rolespec_oid(const RoleSpec *role, bool missing_ok)
{
 Oid oid;

 switch (role->roletype)
 {
  case 131:
   Assert(role->rolename);
   oid = get_role_oid(role->rolename, missing_ok);
   break;

  case 130:
   oid = GetUserId();
   break;

  case 128:
   oid = GetSessionUserId();
   break;

  case 129:
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("role \"%s\" does not exist", "public")));
   oid = InvalidOid;
   break;

  default:
   elog(ERROR, "unexpected role type %d", role->roletype);
 }

 return oid;
}
