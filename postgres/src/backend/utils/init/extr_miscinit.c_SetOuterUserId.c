
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

__attribute__((used)) static void
SetOuterUserId(Oid userid)
{
 AssertState(SecurityRestrictionContext == 0);
 AssertArg(OidIsValid(userid));
 OuterUserId = userid;


 CurrentUserId = userid;
}
