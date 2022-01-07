
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {int pszFile; } ;
struct TYPE_9__ {int content; TYPE_2__* tabs; TYPE_1__ WinType; TYPE_3__* web_browser; } ;
struct TYPE_8__ {int web_browser; } ;
struct TYPE_7__ {int hwnd; } ;
typedef int HRESULT ;
typedef TYPE_4__ HHInfo ;
typedef char* BSTR ;


 int ActivateContentTopic (int ,char const*,int ) ;
 int AppendFullPathURL (int ,char*,int *) ;
 scalar_t__ FAILED (int ) ;
 int INTERNET_MAX_URL_LENGTH ;
 int IWebBrowser2_get_LocationURL (int ,char**) ;
 int SysFreeString (char*) ;
 size_t TAB_CONTENTS ;
 int WARN (char*,int ) ;
 scalar_t__ lstrcmpiW (char*,char*) ;
 scalar_t__ lstrlenW (char*) ;
 char* wcsstr (char*,char const*) ;

__attribute__((used)) static void DoSync(HHInfo *info)
{
    WCHAR buf[INTERNET_MAX_URL_LENGTH];
    HRESULT hres;
    BSTR url;

    hres = IWebBrowser2_get_LocationURL(info->web_browser->web_browser, &url);

    if (FAILED(hres))
    {
        WARN("get_LocationURL failed: %08x\n", hres);
        return;
    }


    if ((!AppendFullPathURL(info->WinType.pszFile, buf, ((void*)0))) || (lstrlenW(buf) > lstrlenW(url)))
    {
        SysFreeString(url);
        return;
    }

    if (lstrcmpiW(buf, url) > 0)
    {
        static const WCHAR delimW[] = {':',':','/',0};
        const WCHAR *index;

        index = wcsstr(url, delimW);

        if (index)
            ActivateContentTopic(info->tabs[TAB_CONTENTS].hwnd, index + 3, info->content);
    }

    SysFreeString(url);
}
