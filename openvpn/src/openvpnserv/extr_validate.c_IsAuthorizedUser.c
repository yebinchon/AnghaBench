
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int SID_NAME_USE ;
typedef int PTOKEN_GROUPS ;
typedef int PSID ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetBuiltinAdminGroupName (char*,int ) ;
 int GetTokenGroups (int const) ;
 int IsUserInGroup (int ,int ,char const*) ;
 int LookupAccountSidW (int *,int ,char*,int*,char*,int*,int *) ;
 int MAX_NAME ;
 int M_INFO ;
 int M_SYSERR ;
 int MsgToEventLog (int ,int ,...) ;
 char* SYSTEM_ADMIN_GROUP ;
 int TEXT (char*) ;
 int _countof (char*) ;
 int free (int ) ;

BOOL
IsAuthorizedUser(PSID sid, const HANDLE token, const WCHAR *ovpn_admin_group)
{
    const WCHAR *admin_group[2];
    WCHAR username[MAX_NAME];
    WCHAR domain[MAX_NAME];
    WCHAR sysadmin_group[MAX_NAME];
    DWORD len = MAX_NAME;
    BOOL ret = FALSE;
    SID_NAME_USE sid_type;


    if (!LookupAccountSidW(((void*)0), sid, username, &len, domain, &len, &sid_type))
    {
        MsgToEventLog(M_SYSERR, TEXT("LookupAccountSid"));

        username[0] = '\0';
        domain[0] = '\0';
    }

    if (GetBuiltinAdminGroupName(sysadmin_group, _countof(sysadmin_group)))
    {
        admin_group[0] = sysadmin_group;
    }
    else
    {
        MsgToEventLog(M_SYSERR, TEXT("Failed to get the name of Administrators group. Using the default."));

        admin_group[0] = SYSTEM_ADMIN_GROUP;
    }
    admin_group[1] = ovpn_admin_group;

    PTOKEN_GROUPS token_groups = GetTokenGroups(token);
    for (int i = 0; i < 2; ++i)
    {
        ret = IsUserInGroup(sid, token_groups, admin_group[i]);
        if (ret)
        {
            MsgToEventLog(M_INFO, TEXT("Authorizing user '%s@%s' by virtue of membership in group '%s'"),
                          username, domain, admin_group[i]);
            goto out;
        }
    }

out:
    free(token_groups);
    return ret;
}
