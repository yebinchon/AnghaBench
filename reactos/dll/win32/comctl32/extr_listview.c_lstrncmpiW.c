
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;


 int CSTR_EQUAL ;
 int CompareStringW (int ,int ,int ,int,int ,int) ;
 int LOCALE_USER_DEFAULT ;
 int NORM_IGNORECASE ;
 int lstrlenW (int ) ;
 int min (int,int ) ;

__attribute__((used)) static inline int lstrncmpiW(LPCWSTR s1, LPCWSTR s2, int n)
{
    n = min(min(n, lstrlenW(s1)), lstrlenW(s2));
    return CompareStringW(LOCALE_USER_DEFAULT, NORM_IGNORECASE, s1, n, s2, n) - CSTR_EQUAL;
}
