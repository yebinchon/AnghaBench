
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int BOOL ;


 scalar_t__ LPSTR_TEXTCALLBACKW ;
 int lstrcmpW (scalar_t__,scalar_t__) ;
 scalar_t__ textdupTtoW (scalar_t__,int ) ;
 int textfreeT (scalar_t__,int ) ;

__attribute__((used)) static inline int textcmpWT(LPCWSTR aw, LPCWSTR bt, BOOL isW)
{
    if (!aw) return bt ? -1 : 0;
    if (!bt) return 1;
    if (aw == LPSTR_TEXTCALLBACKW)
 return bt == LPSTR_TEXTCALLBACKW ? 1 : -1;
    if (bt != LPSTR_TEXTCALLBACKW)
    {
 LPWSTR bw = textdupTtoW(bt, isW);
 int r = bw ? lstrcmpW(aw, bw) : 1;
 textfreeT(bw, isW);
 return r;
    }

    return 1;
}
