
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int AssertState (int ) ;
 int AuthenticatedUserId ;
 int OidIsValid (int ) ;

Oid
GetAuthenticatedUserId(void)
{
 AssertState(OidIsValid(AuthenticatedUserId));
 return AuthenticatedUserId;
}
