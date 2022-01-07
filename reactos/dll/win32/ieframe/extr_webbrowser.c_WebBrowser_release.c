
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IWebBrowser2_iface; } ;
typedef TYPE_1__ WebBrowser ;
typedef int ULONG ;
typedef int DocHost ;


 int IWebBrowser2_Release (int *) ;
 TYPE_1__* impl_from_DocHost (int *) ;

__attribute__((used)) static ULONG WebBrowser_release(DocHost *iface)
{
    WebBrowser *This = impl_from_DocHost(iface);
    return IWebBrowser2_Release(&This->IWebBrowser2_iface);
}
