
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCSTR ;


 int CP_ACP ;
 int MB_PRECOMPOSED ;
 scalar_t__ MemAlloc (int ,int) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;

LPWSTR AnsiToUnicode(LPCSTR strA)
{
    LPWSTR strW;
    int iNeededChars;

    if (!strA) return ((void*)0);

    iNeededChars = MultiByteToWideChar(CP_ACP,
                                       MB_PRECOMPOSED,
                                       strA, -1, ((void*)0), 0);

    strW = (LPWSTR)MemAlloc(0, iNeededChars * sizeof(WCHAR));
    if (!strW) return ((void*)0);

    MultiByteToWideChar(CP_ACP,
                        MB_PRECOMPOSED,
                        strA, -1, strW, iNeededChars);

    return strW;
}
