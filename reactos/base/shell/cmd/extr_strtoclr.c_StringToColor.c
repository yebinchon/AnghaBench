
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef scalar_t__* LPWORD ;
typedef int LPTSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int chop_blank (int *) ;
 scalar_t__ hex_clr (int ) ;
 scalar_t__ str_to_color (int *) ;

BOOL StringToColor(LPWORD lpColor, LPTSTR*str)
{
    WORD wRet;

    wRet = str_to_color (str);
    if (wRet == (WORD)-1)
    {
        wRet=hex_clr (*str);
        chop_blank (str);
        if (wRet == (WORD)-1)
            return FALSE;
    }

    *lpColor = wRet;

    return TRUE;
}
