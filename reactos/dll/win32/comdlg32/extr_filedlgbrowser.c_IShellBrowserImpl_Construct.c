
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int pidlAbsCurrent; } ;
struct TYPE_16__ {TYPE_3__ ShellInfos; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_14__ {int ref; TYPE_5__ IShellBrowser_iface; TYPE_2__ IServiceProvider_iface; TYPE_1__ ICommDlgBrowser_iface; int hwndOwner; } ;
typedef TYPE_4__ IShellBrowserImpl ;
typedef TYPE_5__ IShellBrowser ;
typedef int HWND ;
typedef TYPE_6__ FileOpenDlgInfos ;


 int CSIDL_DESKTOP ;
 int IShellBrowserImpl_ICommDlgBrowser_Vtbl ;
 int IShellBrowserImpl_IServiceProvider_Vtbl ;
 int IShellBrowserImpl_Vtbl ;
 int SHGetSpecialFolderLocation (int ,int ,int *) ;
 int TRACE (char*,TYPE_4__*) ;
 TYPE_6__* get_filedlg_infoptr (int ) ;
 TYPE_4__* heap_alloc (int) ;

IShellBrowser * IShellBrowserImpl_Construct(HWND hwndOwner)
{
    FileOpenDlgInfos *fodInfos = get_filedlg_infoptr(hwndOwner);
    IShellBrowserImpl *sb;

    sb = heap_alloc(sizeof(*sb));


    sb->ref=1;
    sb->hwndOwner = hwndOwner;


    sb->IShellBrowser_iface.lpVtbl = &IShellBrowserImpl_Vtbl;
    sb->ICommDlgBrowser_iface.lpVtbl = &IShellBrowserImpl_ICommDlgBrowser_Vtbl;
    sb->IServiceProvider_iface.lpVtbl = &IShellBrowserImpl_IServiceProvider_Vtbl;
    SHGetSpecialFolderLocation(hwndOwner, CSIDL_DESKTOP,
                               &fodInfos->ShellInfos.pidlAbsCurrent);

    TRACE("%p\n", sb);

    return &sb->IShellBrowser_iface;
}
