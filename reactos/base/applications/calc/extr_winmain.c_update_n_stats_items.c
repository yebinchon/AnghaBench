
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int HWND ;


 int IDC_LIST_STAT ;
 int IDC_TEXT_NITEMS ;
 int LB_GETCOUNT ;
 unsigned int SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int SetDlgItemText (int ,int ,int *) ;
 int _T (char*) ;
 int _stprintf (int *,int ,unsigned int) ;

__attribute__((used)) static void update_n_stats_items(HWND hWnd, TCHAR *buffer)
{
    unsigned int n = SendDlgItemMessage(hWnd, IDC_LIST_STAT, LB_GETCOUNT, 0, 0);

    _stprintf(buffer, _T("n=%u"), n);
    SetDlgItemText(hWnd, IDC_TEXT_NITEMS, buffer);
}
