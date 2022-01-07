
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szBuf ;
typedef int WPARAM ;
typedef int WCHAR ;
typedef int VOID ;
typedef int UINT ;
struct TYPE_3__ {scalar_t__ wMonth; int member_0; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_ERR ;
 int CB_RESETCONTENT ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 int GetLocalTime (TYPE_1__*) ;
 int GetLocaleInfoW (int ,scalar_t__,int *,int) ;
 scalar_t__ LOCALE_SMONTHNAME1 ;
 scalar_t__ LOCALE_SMONTHNAME13 ;
 int LOCALE_USER_DEFAULT ;
 scalar_t__ SendMessageW (int ,int ,int ,int) ;

__attribute__((used)) static VOID
FillMonthsComboBox(HWND hCombo)
{
    SYSTEMTIME LocalDate = {0};
    WCHAR szBuf[64];
    INT i;
    UINT Month;

    GetLocalTime(&LocalDate);

    SendMessageW(hCombo,
                 CB_RESETCONTENT,
                 0,
                 0);

    for (Month = 1;
         Month <= 13;
         Month++)
    {
        i = GetLocaleInfoW(LOCALE_USER_DEFAULT,
                           ((Month < 13) ? LOCALE_SMONTHNAME1 + Month - 1 : LOCALE_SMONTHNAME13),
                           szBuf,
                           sizeof(szBuf) / sizeof(szBuf[0]));
        if (i > 1)
        {
            i = (INT)SendMessageW(hCombo,
                                  CB_ADDSTRING,
                                  0,
                                  (LPARAM)szBuf);
            if (i != CB_ERR)
            {
                SendMessageW(hCombo,
                             CB_SETITEMDATA,
                             (WPARAM)i,
                             Month);

                if (Month == (UINT)LocalDate.wMonth)
                {
                    SendMessageW(hCombo,
                                 CB_SETCURSEL,
                                 (WPARAM)i,
                                 0);
                }
            }
        }
    }
}
