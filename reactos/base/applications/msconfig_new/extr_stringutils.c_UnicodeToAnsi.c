
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int LPCWSTR ;
typedef int CHAR ;


 int CP_ACP ;
 scalar_t__ MemAlloc (int ,int) ;
 int WC_COMPOSITECHECK ;
 int WideCharToMultiByte (int ,int ,int ,int,int *,int,int *,int *) ;

LPSTR UnicodeToAnsi(LPCWSTR strW)
{
    LPSTR strA;
    int iNeededChars;

    if (!strW) return ((void*)0);

    iNeededChars = WideCharToMultiByte(CP_ACP,
                                       WC_COMPOSITECHECK ,
                                       strW, -1, ((void*)0), 0, ((void*)0), ((void*)0));

    strA = (LPSTR)MemAlloc(0, iNeededChars * sizeof(CHAR));
    if (!strA) return ((void*)0);

    WideCharToMultiByte(CP_ACP,
                        WC_COMPOSITECHECK ,
                        strW, -1, strA, iNeededChars, ((void*)0), ((void*)0));

    return strA;
}
