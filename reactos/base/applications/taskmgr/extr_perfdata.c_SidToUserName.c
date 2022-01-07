
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szDomainNameUnused ;
typedef int WCHAR ;
typedef int SID_NAME_USE ;
typedef int * PSID ;
typedef int LPWSTR ;
typedef int DWORD ;


 int LookupAccountSidW (int *,int *,int ,int*,int *,int*,int *) ;

__attribute__((used)) static void SidToUserName(PSID Sid, LPWSTR szBuffer, DWORD BufferSize)
{
    static WCHAR szDomainNameUnused[255];
    DWORD DomainNameLen = sizeof(szDomainNameUnused) / sizeof(szDomainNameUnused[0]);
    SID_NAME_USE Use;

    if (Sid != ((void*)0))
        LookupAccountSidW(((void*)0), Sid, szBuffer, &BufferSize, szDomainNameUnused, &DomainNameLen, &Use);
}
