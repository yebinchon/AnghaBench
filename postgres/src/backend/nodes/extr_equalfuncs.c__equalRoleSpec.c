
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RoleSpec ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int location ;
 int rolename ;
 int roletype ;

__attribute__((used)) static bool
_equalRoleSpec(const RoleSpec *a, const RoleSpec *b)
{
 COMPARE_SCALAR_FIELD(roletype);
 COMPARE_STRING_FIELD(rolename);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
