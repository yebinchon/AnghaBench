
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * heap_xalloc (int) ;

__attribute__((used)) static WCHAR *GetWideString(const char *strA)
{
    if (strA)
    {
        WCHAR *strW;
        int len = MultiByteToWideChar(CP_ACP, 0, strA, -1, ((void*)0), 0);

        strW = heap_xalloc(len * sizeof(WCHAR));
        MultiByteToWideChar(CP_ACP, 0, strA, -1, strW, len);
        return strW;
    }
    return ((void*)0);
}
