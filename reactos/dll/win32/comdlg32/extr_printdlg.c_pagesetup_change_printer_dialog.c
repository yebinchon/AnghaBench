
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int prnt ;
typedef int pagesetup_data ;
typedef int WCHAR ;
struct TYPE_13__ {scalar_t__ dmDriverExtra; scalar_t__ dmSize; } ;
struct TYPE_12__ {int wDriverOffset; int wDeviceOffset; int wOutputOffset; } ;
struct TYPE_11__ {int lStructSize; scalar_t__ hDevNames; scalar_t__ hDevMode; int hwndOwner; scalar_t__ Flags; } ;
typedef TYPE_1__ PRINTDLGW ;
typedef int LPWSTR ;
typedef int HWND ;
typedef TYPE_2__ DEVNAMES ;
typedef TYPE_3__ DEVMODEW ;


 int GMEM_MOVEABLE ;
 scalar_t__ GlobalAlloc (int ,scalar_t__) ;
 int GlobalFree (scalar_t__) ;
 void* GlobalLock (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;
 int PRINTDLG_CreateDevNamesW (scalar_t__*,int ,int ,int ) ;
 scalar_t__ PrintDlgW (TYPE_1__*) ;
 int memcpy (TYPE_3__*,TYPE_3__*,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_3__* pagesetup_get_devmode (int *) ;
 int pagesetup_get_devname (int *) ;
 int pagesetup_get_drvname (int *) ;
 int pagesetup_get_portname (int *) ;
 int pagesetup_init_combos (int ,int *) ;
 int pagesetup_release_a_devname (int *,int ) ;
 int pagesetup_release_devmode (int *,TYPE_3__*) ;
 int pagesetup_set_devmode (int *,TYPE_3__*) ;
 int pagesetup_set_devnames (int *,int *,int *,int *) ;

__attribute__((used)) static void pagesetup_change_printer_dialog(HWND hDlg, pagesetup_data *data)
{
    PRINTDLGW prnt;
    LPWSTR drvname, devname, portname;
    DEVMODEW *tmp_dm, *dm;

    memset(&prnt, 0, sizeof(prnt));
    prnt.lStructSize = sizeof(prnt);
    prnt.Flags = 0;
    prnt.hwndOwner = hDlg;

    drvname = pagesetup_get_drvname(data);
    devname = pagesetup_get_devname(data);
    portname = pagesetup_get_portname(data);
    prnt.hDevNames = 0;
    PRINTDLG_CreateDevNamesW(&prnt.hDevNames, drvname, devname, portname);
    pagesetup_release_a_devname(data, portname);
    pagesetup_release_a_devname(data, devname);
    pagesetup_release_a_devname(data, drvname);

    tmp_dm = pagesetup_get_devmode(data);
    prnt.hDevMode = GlobalAlloc(GMEM_MOVEABLE, tmp_dm->dmSize + tmp_dm->dmDriverExtra);
    dm = GlobalLock(prnt.hDevMode);
    memcpy(dm, tmp_dm, tmp_dm->dmSize + tmp_dm->dmDriverExtra);
    GlobalUnlock(prnt.hDevMode);
    pagesetup_release_devmode(data, tmp_dm);

    if (PrintDlgW(&prnt))
    {
        DEVMODEW *dm = GlobalLock(prnt.hDevMode);
        DEVNAMES *dn = GlobalLock(prnt.hDevNames);

        pagesetup_set_devnames(data, (WCHAR*)dn + dn->wDriverOffset,
                               (WCHAR*)dn + dn->wDeviceOffset, (WCHAR *)dn + dn->wOutputOffset);
        pagesetup_set_devmode(data, dm);
        GlobalUnlock(prnt.hDevNames);
        GlobalUnlock(prnt.hDevMode);
        pagesetup_init_combos(hDlg, data);
    }

    GlobalFree(prnt.hDevMode);
    GlobalFree(prnt.hDevNames);

}
