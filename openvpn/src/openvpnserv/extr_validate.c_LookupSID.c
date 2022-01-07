
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SID_NAME_USE ;
typedef int PSID ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LookupAccountName (int *,int const*,int ,int *,int *,int *,int *) ;
 int MAX_NAME ;
 int TRUE ;
 int _countof (int *) ;

__attribute__((used)) static BOOL
LookupSID(const WCHAR *name, PSID sid, DWORD sid_size)
{
    SID_NAME_USE su;
    WCHAR domain[MAX_NAME];
    DWORD dlen = _countof(domain);

    if (!LookupAccountName(((void*)0), name, sid, &sid_size, domain, &dlen, &su))
    {
        return FALSE;
    }
    return TRUE;
}
