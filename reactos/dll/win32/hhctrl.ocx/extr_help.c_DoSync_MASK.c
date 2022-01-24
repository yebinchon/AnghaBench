#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  pszFile; } ;
struct TYPE_9__ {int /*<<< orphan*/  content; TYPE_2__* tabs; TYPE_1__ WinType; TYPE_3__* web_browser; } ;
struct TYPE_8__ {int /*<<< orphan*/  web_browser; } ;
struct TYPE_7__ {int /*<<< orphan*/  hwnd; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_4__ HHInfo ;
typedef  char* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int INTERNET_MAX_URL_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 size_t TAB_CONTENTS ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 char* FUNC8 (char*,char const*) ; 

__attribute__((used)) static void FUNC9(HHInfo *info)
{
    WCHAR buf[INTERNET_MAX_URL_LENGTH];
    HRESULT hres;
    BSTR url;

    hres = FUNC3(info->web_browser->web_browser, &url);

    if (FUNC2(hres))
    {
        FUNC5("get_LocationURL failed: %08x\n", hres);
        return;
    }

    /* If we're not currently viewing a page in the active .chm file, abort */
    if ((!FUNC1(info->WinType.pszFile, buf, NULL)) || (FUNC7(buf) > FUNC7(url)))
    {
        FUNC4(url);
        return;
    }

    if (FUNC6(buf, url) > 0)
    {
        static const WCHAR delimW[] = {':',':','/',0};
        const WCHAR *index;

        index = FUNC8(url, delimW);

        if (index)
            FUNC0(info->tabs[TAB_CONTENTS].hwnd, index + 3, info->content); /* skip over ::/ */
    }

    FUNC4(url);
}