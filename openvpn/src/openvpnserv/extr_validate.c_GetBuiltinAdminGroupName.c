
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SID_NAME_USE ;
typedef int * PSID ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CreateWellKnownSid (int ,int *,int *,int *) ;
 scalar_t__ FALSE ;
 scalar_t__ LookupAccountSidW (int *,int *,int *,int *,int *,int *,int *) ;
 int MAX_NAME ;
 int SECURITY_MAX_SID_SIZE ;
 int WinBuiltinAdministratorsSid ;
 int _countof (int *) ;
 int free (int *) ;
 int * malloc (int ) ;

__attribute__((used)) static BOOL
GetBuiltinAdminGroupName(WCHAR *name, DWORD nlen)
{
    BOOL b = FALSE;
    PSID admin_sid = ((void*)0);
    DWORD sid_size = SECURITY_MAX_SID_SIZE;
    SID_NAME_USE snu;

    WCHAR domain[MAX_NAME];
    DWORD dlen = _countof(domain);

    admin_sid = malloc(sid_size);
    if (!admin_sid)
    {
        return FALSE;
    }

    b = CreateWellKnownSid(WinBuiltinAdministratorsSid, ((void*)0), admin_sid, &sid_size);
    if (b)
    {
        b = LookupAccountSidW(((void*)0), admin_sid, name, &nlen, domain, &dlen, &snu);
    }

    free(admin_sid);

    return b;
}
