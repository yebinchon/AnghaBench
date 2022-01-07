
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetUserId () ;
 int has_createrole_privilege (int ) ;

__attribute__((used)) static bool
have_createrole_privilege(void)
{
 return has_createrole_privilege(GetUserId());
}
