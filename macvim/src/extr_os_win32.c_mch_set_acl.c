
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vim_acl_T ;
struct my_acl {scalar_t__ pSacl; scalar_t__ pDacl; scalar_t__ pSidGroup; scalar_t__ pSidOwner; } ;
typedef int char_u ;
typedef int WCHAR ;
typedef int SECURITY_INFORMATION ;
typedef int LPSTR ;


 int DACL_SECURITY_INFORMATION ;
 int GROUP_SECURITY_INFORMATION ;
 scalar_t__ GetACP () ;
 int OWNER_SECURITY_INFORMATION ;
 int PROTECTED_DACL_SECURITY_INFORMATION ;
 int SACL_SECURITY_INFORMATION ;
 int SE_FILE_OBJECT ;
 int * advapi_lib ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 int is_acl_inherited (scalar_t__) ;
 int pSetNamedSecurityInfo (int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int pSetNamedSecurityInfoW (int *,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int vim_free (int *) ;

void
mch_set_acl(char_u *fname, vim_acl_T acl)
{
}
