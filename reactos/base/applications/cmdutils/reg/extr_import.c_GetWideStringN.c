
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * heap_xalloc (int) ;

__attribute__((used)) static WCHAR *GetWideStringN(const char *strA, int size, DWORD *len)
{
    if (strA)
    {
        WCHAR *strW;
        *len = MultiByteToWideChar(CP_ACP, 0, strA, size, ((void*)0), 0);

        strW = heap_xalloc(*len * sizeof(WCHAR));
        MultiByteToWideChar(CP_ACP, 0, strA, size, strW, *len);
        return strW;
    }
    *len = 0;
    return ((void*)0);
}
