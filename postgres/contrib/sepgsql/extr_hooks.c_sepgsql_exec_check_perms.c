
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int next_exec_check_perms_hook (int *,int) ;
 int sepgsql_dml_privileges (int *,int) ;
 int stub1 (int *,int) ;

__attribute__((used)) static bool
sepgsql_exec_check_perms(List *rangeTabls, bool abort)
{




 if (next_exec_check_perms_hook &&
  !(*next_exec_check_perms_hook) (rangeTabls, abort))
  return 0;

 if (!sepgsql_dml_privileges(rangeTabls, abort))
  return 0;

 return 1;
}
