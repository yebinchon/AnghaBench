
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int BOOL ;


 int Free (scalar_t__) ;
 scalar_t__ LPSTR_TEXTCALLBACKW ;
 int Str_SetPtrW (scalar_t__*,scalar_t__) ;
 int TRUE ;
 scalar_t__ is_text (scalar_t__) ;
 scalar_t__ textdupTtoW (scalar_t__,int ) ;
 int textfreeT (scalar_t__,int ) ;

__attribute__((used)) static BOOL textsetptrT(LPWSTR *dest, LPCWSTR src, BOOL isW)
{
    BOOL bResult = TRUE;

    if (src == LPSTR_TEXTCALLBACKW)
    {
 if (is_text(*dest)) Free(*dest);
 *dest = LPSTR_TEXTCALLBACKW;
    }
    else
    {
 LPWSTR pszText = textdupTtoW(src, isW);
 if (*dest == LPSTR_TEXTCALLBACKW) *dest = ((void*)0);
 bResult = Str_SetPtrW(dest, pszText);
 textfreeT(pszText, isW);
    }
    return bResult;
}
