
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef unsigned int UINT ;
typedef int * LPWSTR ;
typedef scalar_t__* LPCSTR ;


 int CP_ACP ;
 unsigned int MultiByteToWideChar (int ,int ,scalar_t__*,unsigned int,int *,unsigned int) ;
 int * heap_alloc (unsigned int) ;
 int strlen (scalar_t__*) ;

__attribute__((used)) static LPWSTR FD31_MapStringPairsToW(LPCSTR strA, UINT size)
{
    LPCSTR s;
    LPWSTR x;
    unsigned int n, len;

    s = strA;
    while (*s)
        s = s+strlen(s)+1;
    s++;
    n = s + 1 - strA;
    if (n < size) n = size;

    len = MultiByteToWideChar( CP_ACP, 0, strA, n, ((void*)0), 0 );
    x = heap_alloc(len * sizeof(WCHAR));
    MultiByteToWideChar( CP_ACP, 0, strA, n, x, len );
    return x;
}
