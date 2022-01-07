
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int VOID ;
typedef int SYSTEMTIME ;
typedef int HWND ;


 int DWLP_MSGRESULT ;
 scalar_t__ DateTime_GetSystemtime (int ,int *) ;
 scalar_t__ GDT_VALID ;
 int GetDlgItem (int ,int ) ;
 int HWND_BROADCAST ;
 int IDC_MONTHCALENDAR ;
 int IDC_TIMEPICKER ;
 int MCCM_GETDATE ;
 int MCCM_RESET ;
 int PSNRET_NOERROR ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int SystemSetLocalTime (int *) ;
 int WM_TIMECHANGE ;

__attribute__((used)) static VOID
SetLocalSystemTime(HWND hwnd)
{
    SYSTEMTIME Time;

    if (DateTime_GetSystemtime(GetDlgItem(hwnd,
                                          IDC_TIMEPICKER),
                               &Time) == GDT_VALID &&
        SendMessageW(GetDlgItem(hwnd,
                                IDC_MONTHCALENDAR),
                     MCCM_GETDATE,
                     (WPARAM)&Time,
                     0))
    {
        SystemSetLocalTime(&Time);

        SetWindowLongPtrW(hwnd,
                          DWLP_MSGRESULT,
                          PSNRET_NOERROR);

        SendMessageW(GetDlgItem(hwnd,
                                IDC_MONTHCALENDAR),
                     MCCM_RESET,
                     (WPARAM)&Time,
                     0);


        SendMessageW(HWND_BROADCAST,
                     WM_TIMECHANGE,
                     0,
                     0);
    }
}
