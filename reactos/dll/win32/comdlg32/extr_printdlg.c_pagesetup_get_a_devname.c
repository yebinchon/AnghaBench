
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dlgw; } ;
struct TYPE_7__ {TYPE_2__ u; scalar_t__ unicode; } ;
typedef TYPE_3__ pagesetup_data ;
typedef int devnames_name ;
typedef int WCHAR ;
struct TYPE_5__ {int hDevNames; } ;
typedef int DEVNAMES ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int * HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int get_devname_offset (int *,int ) ;
 int * strdupW (int *) ;

__attribute__((used)) static WCHAR *pagesetup_get_a_devname(const pagesetup_data *data, devnames_name which)
{
    DEVNAMES *dn;
    WCHAR *name;

    dn = GlobalLock(data->u.dlgw->hDevNames);
    if(data->unicode)
        name = strdupW((WCHAR *)dn + get_devname_offset(dn, which));
    else
    {
        int len = MultiByteToWideChar(CP_ACP, 0, (char*)dn + get_devname_offset(dn, which), -1, ((void*)0), 0);
        name = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
        MultiByteToWideChar(CP_ACP, 0, (char*)dn + get_devname_offset(dn, which), -1, name, len);
    }
    GlobalUnlock(data->u.dlgw->hDevNames);
    return name;
}
