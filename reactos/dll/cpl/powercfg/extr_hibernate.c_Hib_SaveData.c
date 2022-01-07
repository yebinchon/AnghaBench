
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bHibernate ;
typedef int INT_PTR ;
typedef int HWND ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BST_CHECKED ;
 scalar_t__ CallNtPowerInformation (int ,scalar_t__*,int,int *,int ) ;
 int FALSE ;
 int Hib_InitDialog (int ) ;
 int IDC_HIBERNATEFILE ;
 scalar_t__ IsDlgButtonChecked (int ,int ) ;
 scalar_t__ STATUS_SUCCESS ;
 int SystemReserveHiberFile ;
 int TRUE ;

INT_PTR
Hib_SaveData(HWND hwndDlg)
{
    BOOLEAN bHibernate;

    bHibernate = (BOOLEAN)(IsDlgButtonChecked(hwndDlg, IDC_HIBERNATEFILE) == BST_CHECKED);

    if (CallNtPowerInformation(SystemReserveHiberFile, &bHibernate, sizeof(bHibernate), ((void*)0), 0) == STATUS_SUCCESS)
    {
        Hib_InitDialog(hwndDlg);
        return TRUE;
    }

    return FALSE;
}
