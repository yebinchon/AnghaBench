
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef int LPCSTR ;
typedef scalar_t__ BOOL ;


 int is_text (scalar_t__) ;
 int lstrlenA (int ) ;
 int lstrlenW (scalar_t__) ;

__attribute__((used)) static inline int textlenT(LPCWSTR text, BOOL isW)
{
    return !is_text(text) ? 0 :
    isW ? lstrlenW(text) : lstrlenA((LPCSTR)text);
}
