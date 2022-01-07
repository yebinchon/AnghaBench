
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int lstrcpyW (int *,int const*) ;
 int lstrlenW (int const*) ;

__attribute__((used)) static inline WCHAR *strdupW(const WCHAR *src)
{
    WCHAR *dest;
    if (!src) return ((void*)0);
    dest = HeapAlloc(GetProcessHeap(), 0, (lstrlenW(src) + 1) * sizeof(WCHAR));
    if (dest) lstrcpyW(dest, src);
    return dest;
}
