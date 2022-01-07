
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ULONG ;
typedef int * PSID ;
typedef int PSECURITY_DESCRIPTOR ;
typedef int BOOL ;


 int DumpSid (int *,char**,int *) ;
 int DumpString (char const*,int,char**,int *) ;
 int FALSE ;
 int GetSecurityDescriptorOwner (int ,int **,int *) ;
 int TRUE ;

__attribute__((used)) static BOOL DumpOwner(PSECURITY_DESCRIPTOR SecurityDescriptor, WCHAR **pwptr, ULONG *plen)
{
    static const WCHAR prefix[] = {'O',':',0};
    BOOL bDefaulted;
    PSID psid;

    if (!GetSecurityDescriptorOwner(SecurityDescriptor, &psid, &bDefaulted))
        return FALSE;

    if (psid == ((void*)0))
        return TRUE;

    DumpString(prefix, -1, pwptr, plen);
    if (!DumpSid(psid, pwptr, plen))
        return FALSE;
    return TRUE;
}
