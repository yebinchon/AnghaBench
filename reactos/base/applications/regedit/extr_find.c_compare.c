
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;


 int _wcsicmp (int const,int const) ;

int compare(const void *x, const void *y)
{
    const LPCWSTR *a = (const LPCWSTR *)x;
    const LPCWSTR *b = (const LPCWSTR *)y;
    return _wcsicmp(*a, *b);
}
