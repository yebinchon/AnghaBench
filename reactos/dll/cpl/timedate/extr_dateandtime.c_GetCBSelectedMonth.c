
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef scalar_t__ WORD ;
typedef int INT ;
typedef int HWND ;


 int CB_ERR ;
 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;

__attribute__((used)) static WORD
GetCBSelectedMonth(HWND hCombo)
{
    INT i;
    WORD Ret = (WORD)-1;

    i = (INT)SendMessageW(hCombo,
                          CB_GETCURSEL,
                          0,
                          0);
    if (i != CB_ERR)
    {
        i = (INT)SendMessageW(hCombo,
                              CB_GETITEMDATA,
                              (WPARAM)i,
                              0);

        if (i >= 1 && i <= 13)
            Ret = (WORD)i;
    }

    return Ret;
}
