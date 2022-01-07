
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int lstrcpyW (int *,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static inline LPWSTR dns_strdup_w( LPCWSTR src )
{
    LPWSTR dst;

    if (!src) return ((void*)0);
    dst = HeapAlloc(GetProcessHeap(), 0, (lstrlenW( src ) + 1) * sizeof(WCHAR) );
    if (dst) lstrcpyW( dst, src );
    return dst;
}
