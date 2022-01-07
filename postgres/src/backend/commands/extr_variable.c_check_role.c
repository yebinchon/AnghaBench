
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_superuser; int roleid; } ;
typedef TYPE_1__ role_auth_extra ;
struct TYPE_4__ {int rolsuper; int oid; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int GucSource ;
typedef TYPE_2__* Form_pg_authid ;


 int AUTHNAME ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 scalar_t__ GETSTRUCT (int ) ;
 int GUC_check_errcode (int ) ;
 int GUC_check_errmsg (char*,char*) ;
 int GetSessionUserId () ;
 int HeapTupleIsValid (int ) ;
 int InitializingParallelWorker ;
 int InvalidOid ;
 int IsTransactionState () ;
 int PointerGetDatum (char*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int is_member_of_role (int ,int ) ;
 scalar_t__ malloc (int) ;
 scalar_t__ strcmp (char*,char*) ;

bool
check_role(char **newval, void **extra, GucSource source)
{
 HeapTuple roleTup;
 Oid roleid;
 bool is_superuser;
 role_auth_extra *myextra;
 Form_pg_authid roleform;

 if (strcmp(*newval, "none") == 0)
 {

  roleid = InvalidOid;
  is_superuser = 0;
 }
 else
 {
  if (!IsTransactionState())
  {





   return 0;
  }


  roleTup = SearchSysCache1(AUTHNAME, PointerGetDatum(*newval));
  if (!HeapTupleIsValid(roleTup))
  {
   GUC_check_errmsg("role \"%s\" does not exist", *newval);
   return 0;
  }

  roleform = (Form_pg_authid) GETSTRUCT(roleTup);
  roleid = roleform->oid;
  is_superuser = roleform->rolsuper;

  ReleaseSysCache(roleTup);






  if (!InitializingParallelWorker &&
   !is_member_of_role(GetSessionUserId(), roleid))
  {
   GUC_check_errcode(ERRCODE_INSUFFICIENT_PRIVILEGE);
   GUC_check_errmsg("permission denied to set role \"%s\"",
        *newval);
   return 0;
  }
 }


 myextra = (role_auth_extra *) malloc(sizeof(role_auth_extra));
 if (!myextra)
  return 0;
 myextra->roleid = roleid;
 myextra->is_superuser = is_superuser;
 *extra = (void *) myextra;

 return 1;
}
