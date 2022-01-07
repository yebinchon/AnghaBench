
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
 scalar_t__ GETSTRUCT (int ) ;
 int GUC_check_errmsg (char*,char*) ;
 int HeapTupleIsValid (int ) ;
 int IsTransactionState () ;
 int PointerGetDatum (char*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 scalar_t__ malloc (int) ;

bool
check_session_authorization(char **newval, void **extra, GucSource source)
{
 HeapTuple roleTup;
 Form_pg_authid roleform;
 Oid roleid;
 bool is_superuser;
 role_auth_extra *myextra;


 if (*newval == ((void*)0))
  return 1;

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


 myextra = (role_auth_extra *) malloc(sizeof(role_auth_extra));
 if (!myextra)
  return 0;
 myextra->roleid = roleid;
 myextra->is_superuser = is_superuser;
 *extra = (void *) myextra;

 return 1;
}
