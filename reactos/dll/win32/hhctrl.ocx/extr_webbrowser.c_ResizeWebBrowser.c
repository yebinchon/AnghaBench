
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* web_browser; } ;
struct TYPE_4__ {int web_browser; } ;
typedef TYPE_2__ HHInfo ;
typedef int DWORD ;


 int IWebBrowser2_put_Height (int ,int ) ;
 int IWebBrowser2_put_Width (int ,int ) ;

void ResizeWebBrowser(HHInfo *info, DWORD dwWidth, DWORD dwHeight)
{
    if (!info->web_browser)
        return;

    IWebBrowser2_put_Width(info->web_browser->web_browser, dwWidth);
    IWebBrowser2_put_Height(info->web_browser->web_browser, dwHeight);
}
