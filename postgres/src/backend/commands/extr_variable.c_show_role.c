
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetCurrentRoleId () ;
 int OidIsValid (int ) ;
 char const* role_string ;

const char *
show_role(void)
{







 if (!OidIsValid(GetCurrentRoleId()))
  return "none";


 return role_string ? role_string : "none";
}
