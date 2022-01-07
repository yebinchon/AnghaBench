
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rolname; } ;
typedef int RoleSpec ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_authid ;


 scalar_t__ GETSTRUCT (int ) ;
 int NameStr (int ) ;
 int ReleaseSysCache (int ) ;
 int get_rolespec_tuple (int const*) ;
 char* pstrdup (int ) ;

char *
get_rolespec_name(const RoleSpec *role)
{
 HeapTuple tp;
 Form_pg_authid authForm;
 char *rolename;

 tp = get_rolespec_tuple(role);
 authForm = (Form_pg_authid) GETSTRUCT(tp);
 rolename = pstrdup(NameStr(authForm->rolname));
 ReleaseSysCache(tp);

 return rolename;
}
