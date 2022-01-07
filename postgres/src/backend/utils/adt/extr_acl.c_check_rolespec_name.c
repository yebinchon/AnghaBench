
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ roletype; int rolename; } ;
typedef TYPE_1__ RoleSpec ;


 int ERRCODE_RESERVED_NAME ;
 int ERROR ;
 scalar_t__ IsReservedName (int ) ;
 scalar_t__ ROLESPEC_CSTRING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char const*) ;
 int errmsg (char*,int ) ;

void
check_rolespec_name(const RoleSpec *role, const char *detail_msg)
{
 if (!role)
  return;

 if (role->roletype != ROLESPEC_CSTRING)
  return;

 if (IsReservedName(role->rolename))
 {
  if (detail_msg)
   ereport(ERROR,
     (errcode(ERRCODE_RESERVED_NAME),
      errmsg("role name \"%s\" is reserved",
       role->rolename),
      errdetail("%s", detail_msg)));
  else
   ereport(ERROR,
     (errcode(ERRCODE_RESERVED_NAME),
      errmsg("role name \"%s\" is reserved",
       role->rolename)));
 }
}
