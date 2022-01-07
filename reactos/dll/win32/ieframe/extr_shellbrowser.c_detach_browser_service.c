
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IShellBrowser_iface; int * doc_host; } ;
typedef TYPE_1__ ShellBrowser ;


 int IShellBrowser_Release (int *) ;

void detach_browser_service(ShellBrowser *sb)
{
    sb->doc_host = ((void*)0);
    IShellBrowser_Release(&sb->IShellBrowser_iface);
}
