
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ACL_ID_PUBLIC ;
 int get_role_oid (char const*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

Oid
get_role_oid_or_public(const char *rolname)
{
 if (strcmp(rolname, "public") == 0)
  return ACL_ID_PUBLIC;

 return get_role_oid(rolname, 0);
}
