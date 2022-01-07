
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vim_acl_T ;
struct my_acl {int * pSecurityDescriptor; int pDacl; int pSacl; int pSidGroup; int pSidOwner; } ;
typedef int char_u ;
typedef int WCHAR ;
typedef int LPSTR ;
typedef scalar_t__ DWORD ;


 int DACL_SECURITY_INFORMATION ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_PRIVILEGE_NOT_HELD ;
 int GROUP_SECURITY_INFORMATION ;
 scalar_t__ GetACP () ;
 int OWNER_SECURITY_INFORMATION ;
 int SACL_SECURITY_INFORMATION ;
 int SE_FILE_OBJECT ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 int * advapi_lib ;
 scalar_t__ alloc_clear (unsigned int) ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 scalar_t__ g_PlatformId ;
 int mch_free_acl (int ) ;
 scalar_t__ pGetNamedSecurityInfo (int ,int ,int,int *,int *,int *,int *,int **) ;
 scalar_t__ pGetNamedSecurityInfoW (int *,int ,int,int *,int *,int *,int *,int **) ;
 int vim_free (int *) ;

vim_acl_T
mch_get_acl(char_u *fname)
{

    return (vim_acl_T)((void*)0);
}
