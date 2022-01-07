
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ LPCSTR ;
typedef int BOOL ;


 scalar_t__ LPSTR_TEXTCALLBACKA ;
 scalar_t__ LPSTR_TEXTCALLBACKW ;

__attribute__((used)) static inline BOOL TOOLTIPS_IsCallbackString(LPCWSTR str, BOOL isW)
{
    if (isW)
      return str == LPSTR_TEXTCALLBACKW;
    else
      return (LPCSTR)str == LPSTR_TEXTCALLBACKA;
}
