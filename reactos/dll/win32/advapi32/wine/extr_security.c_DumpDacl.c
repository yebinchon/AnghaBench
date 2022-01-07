
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ULONG ;
typedef int SECURITY_DESCRIPTOR_CONTROL ;
typedef int PSECURITY_DESCRIPTOR ;
typedef int PACL ;
typedef int DWORD ;
typedef int BOOL ;


 int DumpAcl (int ,char**,int *,int,int,int) ;
 int DumpString (char const*,int,char**,int *) ;
 int FALSE ;
 int GetSecurityDescriptorControl (int ,int*,int *) ;
 int GetSecurityDescriptorDacl (int ,int *,int *,int *) ;
 int SE_DACL_AUTO_INHERITED ;
 int SE_DACL_AUTO_INHERIT_REQ ;
 int SE_DACL_PROTECTED ;
 int TRUE ;

__attribute__((used)) static BOOL DumpDacl(PSECURITY_DESCRIPTOR SecurityDescriptor, WCHAR **pwptr, ULONG *plen)
{
    static const WCHAR dacl[] = {'D',':',0};
    SECURITY_DESCRIPTOR_CONTROL control;
    BOOL present, defaulted;
    DWORD revision;
    PACL pacl;

    if (!GetSecurityDescriptorDacl(SecurityDescriptor, &present, &pacl, &defaulted))
        return FALSE;

    if (!GetSecurityDescriptorControl(SecurityDescriptor, &control, &revision))
        return FALSE;

    if (!present)
        return TRUE;

    DumpString(dacl, 2, pwptr, plen);
    if (!DumpAcl(pacl, pwptr, plen, control & SE_DACL_PROTECTED, control & SE_DACL_AUTO_INHERIT_REQ, control & SE_DACL_AUTO_INHERITED))
        return FALSE;
    return TRUE;
}
