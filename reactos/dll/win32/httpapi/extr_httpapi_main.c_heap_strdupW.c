
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int * heap_alloc (int) ;
 int wcscpy (int *,int const*) ;
 int wcslen (int const*) ;

__attribute__((used)) static WCHAR *heap_strdupW(const WCHAR *str)
{
    int len = wcslen(str) + 1;
    WCHAR *ret = heap_alloc(len * sizeof(WCHAR));
    wcscpy(ret, str);
    return ret;
}
