
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;


 int * heap_alloc (int) ;
 int lstrcpyW (int *,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static inline LPWSTR strdupW(LPCWSTR src)
{
    LPWSTR dest;

    if (!src)
        return ((void*)0);

    if ((dest = heap_alloc((lstrlenW(src) + 1) * sizeof(WCHAR))))
        lstrcpyW(dest, src);

    return dest;
}
