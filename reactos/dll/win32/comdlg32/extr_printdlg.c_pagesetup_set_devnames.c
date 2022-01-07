
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* dlgw; } ;
struct TYPE_9__ {TYPE_2__ u; scalar_t__ unicode; } ;
typedef TYPE_3__ pagesetup_data ;
typedef int WCHAR ;
struct TYPE_10__ {int wDriverOffset; int wDeviceOffset; int wOutputOffset; int wDefault; } ;
struct TYPE_7__ {int hDevNames; } ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef TYPE_4__ DEVNAMES ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 int GMEM_MOVEABLE ;
 int GetDefaultPrinterW (int *,int*) ;
 int GlobalAlloc (int ,int) ;
 TYPE_4__* GlobalLock (int ) ;
 int GlobalReAlloc (int ,int,int ) ;
 int GlobalUnlock (int ) ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;
 int lstrcmpW (int *,int ) ;
 int lstrcpyW (int *,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static void pagesetup_set_devnames(pagesetup_data *data, LPCWSTR drv, LPCWSTR devname, LPCWSTR port)
{
    DEVNAMES *dn;
    WCHAR def[256];
    DWORD len = sizeof(DEVNAMES), drv_len, dev_len, port_len;

    if(data->unicode)
    {
        drv_len = (lstrlenW(drv) + 1) * sizeof(WCHAR);
        dev_len = (lstrlenW(devname) + 1) * sizeof(WCHAR);
        port_len = (lstrlenW(port) + 1) * sizeof(WCHAR);
    }
    else
    {
        drv_len = WideCharToMultiByte(CP_ACP, 0, drv, -1, ((void*)0), 0, ((void*)0), ((void*)0));
        dev_len = WideCharToMultiByte(CP_ACP, 0, devname, -1, ((void*)0), 0, ((void*)0), ((void*)0));
        port_len = WideCharToMultiByte(CP_ACP, 0, port, -1, ((void*)0), 0, ((void*)0), ((void*)0));
    }
    len += drv_len + dev_len + port_len;

    if(data->u.dlgw->hDevNames)
        data->u.dlgw->hDevNames = GlobalReAlloc(data->u.dlgw->hDevNames, len, GMEM_MOVEABLE);
    else
        data->u.dlgw->hDevNames = GlobalAlloc(GMEM_MOVEABLE, len);

    dn = GlobalLock(data->u.dlgw->hDevNames);

    if(data->unicode)
    {
        WCHAR *ptr = (WCHAR *)(dn + 1);
        len = sizeof(DEVNAMES) / sizeof(WCHAR);
        dn->wDriverOffset = len;
        lstrcpyW(ptr, drv);
        ptr += drv_len / sizeof(WCHAR);
        len += drv_len / sizeof(WCHAR);
        dn->wDeviceOffset = len;
        lstrcpyW(ptr, devname);
        ptr += dev_len / sizeof(WCHAR);
        len += dev_len / sizeof(WCHAR);
        dn->wOutputOffset = len;
        lstrcpyW(ptr, port);
    }
    else
    {
        char *ptr = (char *)(dn + 1);
        len = sizeof(DEVNAMES);
        dn->wDriverOffset = len;
        WideCharToMultiByte(CP_ACP, 0, drv, -1, ptr, drv_len, ((void*)0), ((void*)0));
        ptr += drv_len;
        len += drv_len;
        dn->wDeviceOffset = len;
        WideCharToMultiByte(CP_ACP, 0, devname, -1, ptr, dev_len, ((void*)0), ((void*)0));
        ptr += dev_len;
        len += dev_len;
        dn->wOutputOffset = len;
        WideCharToMultiByte(CP_ACP, 0, port, -1, ptr, port_len, ((void*)0), ((void*)0));
    }

    dn->wDefault = 0;
    len = ARRAY_SIZE(def);
    GetDefaultPrinterW(def, &len);
    if(!lstrcmpW(def, devname))
        dn->wDefault = 1;

    GlobalUnlock(data->u.dlgw->hDevNames);
}
