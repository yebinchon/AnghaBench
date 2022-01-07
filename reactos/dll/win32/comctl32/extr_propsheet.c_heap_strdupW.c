
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int * Alloc (int) ;
 int strcpyW (int *,int const*) ;
 int strlenW (int const*) ;

__attribute__((used)) static WCHAR *heap_strdupW(const WCHAR *str)
{
    int len = strlenW(str) + 1;
    WCHAR *ret = Alloc(len * sizeof(WCHAR));
    strcpyW(ret, str);
    return ret;
}
