
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_10__ {int ref; int * doc_host; TYPE_3__ IDocObjectService_iface; TYPE_2__ IBrowserService_iface; TYPE_1__ IShellBrowser_iface; } ;
typedef TYPE_4__ ShellBrowser ;
typedef int HRESULT ;
typedef int DocHost ;


 int BrowserServiceVtbl ;
 int DocObjectServiceVtbl ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int ShellBrowserVtbl ;
 TYPE_4__* heap_alloc (int) ;

HRESULT create_browser_service(DocHost *doc_host, ShellBrowser **ret)
{
    ShellBrowser *sb;

    sb = heap_alloc(sizeof(ShellBrowser));
    if(!sb)
        return E_OUTOFMEMORY;

    sb->IShellBrowser_iface.lpVtbl = &ShellBrowserVtbl;
    sb->IBrowserService_iface.lpVtbl = &BrowserServiceVtbl;
    sb->IDocObjectService_iface.lpVtbl = &DocObjectServiceVtbl;

    sb->ref = 1;
    sb->doc_host = doc_host;

    *ret = sb;
    return S_OK;
}
