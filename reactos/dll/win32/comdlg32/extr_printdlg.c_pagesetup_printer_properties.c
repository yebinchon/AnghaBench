
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pagesetup_data ;
typedef scalar_t__ WORD ;
typedef int LRESULT ;
typedef int LPWSTR ;
typedef int HWND ;
typedef int HANDLE ;
typedef int DEVMODEW ;


 int CB_ERR ;
 int CB_GETCOUNT ;
 int CB_GETITEMDATA ;
 int CB_SETCURSEL ;
 int ClosePrinter (int ) ;
 int DM_IN_BUFFER ;
 int DM_IN_PROMPT ;
 int DM_OUT_BUFFER ;
 int DocumentPropertiesW (int ,int ,int ,int *,int *,int) ;
 int FIXME (char*) ;
 int OpenPrinterW (int ,int *,int *) ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,int,int ) ;
 int cmb2 ;
 int pagesetup_change_preview (int *) ;
 int * pagesetup_get_devmode (int *) ;
 int pagesetup_get_devname (int *) ;
 scalar_t__ pagesetup_get_papersize (int *) ;
 int pagesetup_release_a_devname (int *,int ) ;
 int pagesetup_release_devmode (int *,int *) ;
 int pagesetup_set_devmode (int *,int *) ;
 int pagesetup_update_orientation_buttons (int ,int *) ;
 int pagesetup_update_papersize (int *) ;

__attribute__((used)) static void pagesetup_printer_properties(HWND hDlg, pagesetup_data *data)
{
    HANDLE hprn;
    LPWSTR devname;
    DEVMODEW *dm;
    LRESULT count;
    int i;

    devname = pagesetup_get_devname(data);

    if (!OpenPrinterW(devname, &hprn, ((void*)0)))
    {
        FIXME("Call to OpenPrinter did not succeed!\n");
        pagesetup_release_a_devname(data, devname);
        return;
    }

    dm = pagesetup_get_devmode(data);
    DocumentPropertiesW(hDlg, hprn, devname, dm, dm, DM_IN_BUFFER | DM_OUT_BUFFER | DM_IN_PROMPT);
    pagesetup_set_devmode(data, dm);
    pagesetup_release_devmode(data, dm);
    pagesetup_release_a_devname(data, devname);
    ClosePrinter(hprn);


    pagesetup_update_papersize(data);
    pagesetup_update_orientation_buttons(hDlg, data);


    pagesetup_change_preview(data);


    count = SendDlgItemMessageW(hDlg, cmb2, CB_GETCOUNT, 0, 0);
    if(count != CB_ERR)
    {
        WORD paperword = pagesetup_get_papersize(data);
        for(i = 0; i < count; i++)
        {
            if(SendDlgItemMessageW(hDlg, cmb2, CB_GETITEMDATA, i, 0) == paperword) {
                SendDlgItemMessageW(hDlg, cmb2, CB_SETCURSEL, i, 0);
                break;
            }
        }
    }
}
