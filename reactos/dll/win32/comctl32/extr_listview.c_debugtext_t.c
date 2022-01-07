
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef char* LPCSTR ;
typedef scalar_t__ BOOL ;


 scalar_t__ LPSTR_TEXTCALLBACKW ;
 char* debugstr_a (char*) ;
 char* debugstr_w (scalar_t__) ;

__attribute__((used)) static inline LPCSTR debugtext_t(LPCWSTR text, BOOL isW)
{
    if (text == LPSTR_TEXTCALLBACKW) return "(callback)";
    return isW ? debugstr_w(text) : debugstr_a((LPCSTR)text);
}
