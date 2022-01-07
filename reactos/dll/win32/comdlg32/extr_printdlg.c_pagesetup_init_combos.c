
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pagesetup_data ;
typedef int LPWSTR ;
typedef int HWND ;
typedef int DEVMODEW ;


 int PRINTDLG_SetUpPaperComboBoxW (int ,int ,int ,int ,int *) ;
 int PRINTDLG_SetUpPrinterListComboW (int ,int ,int ) ;
 int cmb1 ;
 int cmb2 ;
 int cmb3 ;
 int * pagesetup_get_devmode (int *) ;
 int pagesetup_get_devname (int *) ;
 int pagesetup_get_portname (int *) ;
 int pagesetup_release_a_devname (int *,int ) ;
 int pagesetup_release_devmode (int *,int *) ;

__attribute__((used)) static void pagesetup_init_combos(HWND hDlg, pagesetup_data *data)
{
    DEVMODEW *dm;
    LPWSTR devname, portname;

    dm = pagesetup_get_devmode(data);
    devname = pagesetup_get_devname(data);
    portname = pagesetup_get_portname(data);

    PRINTDLG_SetUpPrinterListComboW(hDlg, cmb1, devname);
    PRINTDLG_SetUpPaperComboBoxW(hDlg, cmb2, devname, portname, dm);
    PRINTDLG_SetUpPaperComboBoxW(hDlg, cmb3, devname, portname, dm);

    pagesetup_release_a_devname(data, portname);
    pagesetup_release_a_devname(data, devname);
    pagesetup_release_devmode(data, dm);
}
