
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int AssertState (int ) ;
 int OidIsValid (int ) ;
 int SessionUserId ;

Oid
GetSessionUserId(void)
{
 AssertState(OidIsValid(SessionUserId));
 return SessionUserId;
}
