
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct X500TokenW {char* start; char* end; } ;
typedef char* LPCWSTR ;
typedef int BOOL ;


 int CRYPT_E_INVALID_X500_STRING ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (char*) ;
 scalar_t__ isspaceW (char) ;

__attribute__((used)) static BOOL CRYPT_GetNextKeyW(LPCWSTR str, struct X500TokenW *token,
 LPCWSTR *ppszError)
{
    BOOL ret = TRUE;

    while (*str && isspaceW(*str))
        str++;
    if (*str)
    {
        token->start = str;
        while (*str && *str != '=' && !isspaceW(*str))
            str++;
        if (*str && (*str == '=' || isspaceW(*str)))
            token->end = str;
        else
        {
            TRACE("missing equals char at %s\n", debugstr_w(token->start));
            if (ppszError)
                *ppszError = token->start;
            SetLastError(CRYPT_E_INVALID_X500_STRING);
            ret = FALSE;
        }
    }
    else
        token->start = ((void*)0);
    return ret;
}
