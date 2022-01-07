
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef char* LPCSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 scalar_t__ LPSTR_TEXTCALLBACKW ;
 char* debugstr_an (char*,int ) ;
 char* debugstr_wn (scalar_t__,int ) ;
 int min (int ,int ) ;
 int textlenT (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline LPCSTR debugtext_tn(LPCWSTR text, BOOL isW, INT n)
{
    if (text == LPSTR_TEXTCALLBACKW) return "(callback)";
    n = min(textlenT(text, isW), n);
    return isW ? debugstr_wn(text, n) : debugstr_an((LPCSTR)text, n);
}
