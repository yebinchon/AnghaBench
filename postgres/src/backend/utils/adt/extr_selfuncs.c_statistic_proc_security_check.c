
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ acl_ok; } ;
typedef TYPE_1__ VariableStatData ;
typedef int Oid ;


 int DEBUG2 ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*,int ) ;
 scalar_t__ get_func_leakproof (int ) ;
 int get_func_name (int ) ;

bool
statistic_proc_security_check(VariableStatData *vardata, Oid func_oid)
{
 if (vardata->acl_ok)
  return 1;

 if (!OidIsValid(func_oid))
  return 0;

 if (get_func_leakproof(func_oid))
  return 1;

 ereport(DEBUG2,
   (errmsg_internal("not using statistics because function \"%s\" is not leak-proof",
        get_func_name(func_oid))));
 return 0;
}
