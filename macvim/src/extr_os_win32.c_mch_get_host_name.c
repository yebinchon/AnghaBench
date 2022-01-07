
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wszHostName ;
typedef char char_u ;
typedef int WCHAR ;
typedef int DWORD ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ GetACP () ;
 int GetComputerName (char*,int*) ;
 scalar_t__ GetComputerNameW (int *,int*) ;
 scalar_t__ GetLastError () ;
 int enc_codepage ;
 char* utf16_to_enc (int *,int *) ;
 int vim_free (char*) ;
 int vim_strncpy (char*,char*,int) ;

void
mch_get_host_name(
    char_u *s,
    int len)
{
    DWORD cch = len;
    if (!GetComputerName(s, &cch))
 vim_strncpy(s, "PC (Win32 Vim)", len - 1);
}
