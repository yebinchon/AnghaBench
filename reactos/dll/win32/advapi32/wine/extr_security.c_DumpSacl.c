
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
 int GetSecurityDescriptorSacl (int ,int *,int *,int *) ;
 int SE_SACL_AUTO_INHERITED ;
 int SE_SACL_AUTO_INHERIT_REQ ;
 int SE_SACL_PROTECTED ;
 int TRUE ;

__attribute__((used)) static BOOL DumpSacl(PSECURITY_DESCRIPTOR SecurityDescriptor, WCHAR **pwptr, ULONG *plen)
{
    static const WCHAR sacl[] = {'S',':',0};
    SECURITY_DESCRIPTOR_CONTROL control;
    BOOL present, defaulted;
    DWORD revision;
    PACL pacl;

    if (!GetSecurityDescriptorSacl(SecurityDescriptor, &present, &pacl, &defaulted))
        return FALSE;

    if (!GetSecurityDescriptorControl(SecurityDescriptor, &control, &revision))
        return FALSE;

    if (!present)
        return TRUE;

    DumpString(sacl, 2, pwptr, plen);
    if (!DumpAcl(pacl, pwptr, plen, control & SE_SACL_PROTECTED, control & SE_SACL_AUTO_INHERIT_REQ, control & SE_SACL_AUTO_INHERITED))
        return FALSE;
    return TRUE;
}
