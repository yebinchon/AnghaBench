
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef scalar_t__ LPCSTR ;
typedef int DWORD ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,int *,int) ;
 int * heap_alloc (int) ;

__attribute__((used)) static LPWSTR FD31_DupToW(LPCSTR str, DWORD size)
{
    LPWSTR strW = ((void*)0);
    if (str && (size > 0))
    {
        strW = heap_alloc(size * sizeof(WCHAR));
        if (strW) MultiByteToWideChar( CP_ACP, 0, str, -1, strW, size );
    }
    return strW;
}
