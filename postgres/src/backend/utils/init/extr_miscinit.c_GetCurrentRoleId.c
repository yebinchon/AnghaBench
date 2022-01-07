
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int InvalidOid ;
 int OuterUserId ;
 scalar_t__ SetRoleIsActive ;

Oid
GetCurrentRoleId(void)
{
 if (SetRoleIsActive)
  return OuterUserId;
 else
  return InvalidOid;
}
