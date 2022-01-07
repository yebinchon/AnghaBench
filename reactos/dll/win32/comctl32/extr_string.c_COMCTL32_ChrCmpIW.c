
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CompareStringW (int ,int ,int *,int,int *,int) ;
 int GetThreadLocale () ;
 int NORM_IGNORECASE ;

__attribute__((used)) static inline BOOL COMCTL32_ChrCmpIW(WCHAR ch1, WCHAR ch2)
{
  return CompareStringW(GetThreadLocale(), NORM_IGNORECASE, &ch1, 1, &ch2, 1) - CSTR_EQUAL;
}
