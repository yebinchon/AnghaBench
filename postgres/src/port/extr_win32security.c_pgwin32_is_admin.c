
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef int PSID ;
typedef scalar_t__ BOOL ;


 int AllocateAndInitializeSid (TYPE_1__*,int,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int CheckTokenMembership (int *,int ,scalar_t__*) ;
 int DOMAIN_ALIAS_RID_ADMINS ;
 int DOMAIN_ALIAS_RID_POWER_USERS ;
 int FreeSid (int ) ;
 int GetLastError () ;
 int SECURITY_BUILTIN_DOMAIN_RID ;
 int SECURITY_NT_AUTHORITY ;
 int _ (char*) ;
 int exit (int) ;
 int log_error (int ,int ) ;

int
pgwin32_is_admin(void)
{
 PSID AdministratorsSid;
 PSID PowerUsersSid;
 SID_IDENTIFIER_AUTHORITY NtAuthority = {SECURITY_NT_AUTHORITY};
 BOOL IsAdministrators;
 BOOL IsPowerUsers;

 if (!AllocateAndInitializeSid(&NtAuthority, 2,
          SECURITY_BUILTIN_DOMAIN_RID,
          DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0,
          0, &AdministratorsSid))
 {
  log_error(_("could not get SID for Administrators group: error code %lu\n"),
      GetLastError());
  exit(1);
 }

 if (!AllocateAndInitializeSid(&NtAuthority, 2,
          SECURITY_BUILTIN_DOMAIN_RID,
          DOMAIN_ALIAS_RID_POWER_USERS, 0, 0, 0, 0, 0,
          0, &PowerUsersSid))
 {
  log_error(_("could not get SID for PowerUsers group: error code %lu\n"),
      GetLastError());
  exit(1);
 }

 if (!CheckTokenMembership(((void*)0), AdministratorsSid, &IsAdministrators) ||
  !CheckTokenMembership(((void*)0), PowerUsersSid, &IsPowerUsers))
 {
  log_error(_("could not check access token membership: error code %lu\n"),
      GetLastError());
  exit(1);
 }

 FreeSid(AdministratorsSid);
 FreeSid(PowerUsersSid);

 if (IsAdministrators || IsPowerUsers)
  return 1;
 else
  return 0;
}
