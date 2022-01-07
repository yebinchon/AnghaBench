
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* roleId; } ;
struct TYPE_3__ {char* oid; scalar_t__ rolconnlimit; int rolcanlogin; scalar_t__ rolsuper; int rolname; } ;
typedef char* Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_authid ;


 int AUTHNAME ;
 int AUTHOID ;
 int AcceptInvalidationMessages () ;
 int AssertState (int) ;
 char* AuthenticatedUserId ;
 scalar_t__ AuthenticatedUserIsSuperuser ;
 scalar_t__ CountUserBackends (char*) ;
 int ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION ;
 int ERRCODE_TOO_MANY_CONNECTIONS ;
 int FATAL ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int IsBootstrapProcessingMode () ;
 scalar_t__ IsUnderPostmaster ;
 TYPE_2__* MyProc ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (char*) ;
 int OidIsValid (char*) ;
 int PGC_BACKEND ;
 int PGC_INTERNAL ;
 int PGC_S_OVERRIDE ;
 int PointerGetDatum (char const*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SetConfigOption (char*,char*,int ,int ) ;
 int SetSessionUserId (char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

void
InitializeSessionUserId(const char *rolename, Oid roleid)
{
 HeapTuple roleTup;
 Form_pg_authid rform;
 char *rname;





 AssertState(!IsBootstrapProcessingMode());


 AssertState(!OidIsValid(AuthenticatedUserId));






 AcceptInvalidationMessages();

 if (rolename != ((void*)0))
 {
  roleTup = SearchSysCache1(AUTHNAME, PointerGetDatum(rolename));
  if (!HeapTupleIsValid(roleTup))
   ereport(FATAL,
     (errcode(ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION),
      errmsg("role \"%s\" does not exist", rolename)));
 }
 else
 {
  roleTup = SearchSysCache1(AUTHOID, ObjectIdGetDatum(roleid));
  if (!HeapTupleIsValid(roleTup))
   ereport(FATAL,
     (errcode(ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION),
      errmsg("role with OID %u does not exist", roleid)));
 }

 rform = (Form_pg_authid) GETSTRUCT(roleTup);
 roleid = rform->oid;
 rname = NameStr(rform->rolname);

 AuthenticatedUserId = roleid;
 AuthenticatedUserIsSuperuser = rform->rolsuper;


 SetSessionUserId(roleid, AuthenticatedUserIsSuperuser);



 MyProc->roleId = roleid;






 if (IsUnderPostmaster)
 {



  if (!rform->rolcanlogin)
   ereport(FATAL,
     (errcode(ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION),
      errmsg("role \"%s\" is not permitted to log in",
       rname)));
  if (rform->rolconnlimit >= 0 &&
   !AuthenticatedUserIsSuperuser &&
   CountUserBackends(roleid) > rform->rolconnlimit)
   ereport(FATAL,
     (errcode(ERRCODE_TOO_MANY_CONNECTIONS),
      errmsg("too many connections for role \"%s\"",
       rname)));
 }


 SetConfigOption("session_authorization", rname,
     PGC_BACKEND, PGC_S_OVERRIDE);
 SetConfigOption("is_superuser",
     AuthenticatedUserIsSuperuser ? "on" : "off",
     PGC_INTERNAL, PGC_S_OVERRIDE);

 ReleaseSysCache(roleTup);
}
