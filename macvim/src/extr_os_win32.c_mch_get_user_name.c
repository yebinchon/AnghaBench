
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wszUserName ;
typedef char char_u ;
typedef int WCHAR ;
typedef int DWORD ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int FAIL ;
 scalar_t__ GetACP () ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetUserName (char*,int*) ;
 scalar_t__ GetUserNameW (int *,int*) ;
 char NUL ;
 int OK ;
 int enc_codepage ;
 char* utf16_to_enc (int *,int *) ;
 int vim_free (char*) ;
 int vim_strncpy (char*,char*,int) ;

int
mch_get_user_name(
    char_u *s,
    int len)
{
    char szUserName[256 + 1];
    DWORD cch = sizeof szUserName;
    if (GetUserName(szUserName, &cch))
    {
 vim_strncpy(s, szUserName, len - 1);
 return OK;
    }
    s[0] = NUL;
    return FAIL;
}
