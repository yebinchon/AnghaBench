
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int LPCSTR ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int lstrcpyA (int *,int ) ;
 int lstrlenA (int ) ;

__attribute__((used)) static inline LPSTR dns_strdup_a( LPCSTR src )
{
    LPSTR dst;

    if (!src) return ((void*)0);
    dst = HeapAlloc(GetProcessHeap(), 0, (lstrlenA( src ) + 1) * sizeof(char) );
    if (dst) lstrcpyA( dst, src );
    return dst;
}
