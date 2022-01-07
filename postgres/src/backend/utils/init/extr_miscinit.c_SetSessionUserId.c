
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* Oid ;


 int AssertArg (int ) ;
 int AssertState (int) ;
 void* CurrentUserId ;
 int OidIsValid (void*) ;
 void* OuterUserId ;
 scalar_t__ SecurityRestrictionContext ;
 void* SessionUserId ;
 int SessionUserIsSuperuser ;
 int SetRoleIsActive ;

__attribute__((used)) static void
SetSessionUserId(Oid userid, bool is_superuser)
{
 AssertState(SecurityRestrictionContext == 0);
 AssertArg(OidIsValid(userid));
 SessionUserId = userid;
 SessionUserIsSuperuser = is_superuser;
 SetRoleIsActive = 0;


 OuterUserId = userid;
 CurrentUserId = userid;
}
