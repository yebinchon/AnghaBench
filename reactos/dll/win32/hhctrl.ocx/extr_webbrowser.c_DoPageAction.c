
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int web_browser; } ;
typedef TYPE_1__ WebBrowserContainer ;
typedef int DWORD ;


 int IWebBrowser2_ExecWB (int ,int ,int ,int ,int ) ;
 int IWebBrowser2_GoBack (int ) ;
 int IWebBrowser2_GoForward (int ) ;
 int IWebBrowser2_GoHome (int ) ;
 int IWebBrowser2_GoSearch (int ) ;
 int IWebBrowser2_Refresh (int ) ;
 int IWebBrowser2_Stop (int ) ;
 int OLECMDEXECOPT_DONTPROMPTUSER ;
 int OLECMDID_PRINT ;
void DoPageAction(WebBrowserContainer *container, DWORD dwAction)
{
    if (!container || !container->web_browser)
        return;

    switch (dwAction)
    {
        case 134:
            IWebBrowser2_GoBack(container->web_browser);
            break;
        case 133:
            IWebBrowser2_GoForward(container->web_browser);
            break;
        case 132:
            IWebBrowser2_GoHome(container->web_browser);
            break;
        case 129:
            IWebBrowser2_GoSearch(container->web_browser);
            break;
        case 130:
            IWebBrowser2_Refresh(container->web_browser);
            break;
        case 128:
            IWebBrowser2_Stop(container->web_browser);
            break;
        case 131:
            IWebBrowser2_ExecWB(container->web_browser, OLECMDID_PRINT, OLECMDEXECOPT_DONTPROMPTUSER, 0, 0);
            break;
    }
}
