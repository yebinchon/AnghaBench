
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Datum ;


 void* InvalidOid ;
 void* cached_member_role ;
 void* cached_privs_role ;

__attribute__((used)) static void
RoleMembershipCacheCallback(Datum arg, int cacheid, uint32 hashvalue)
{

 cached_privs_role = InvalidOid;
 cached_member_role = InvalidOid;
}
