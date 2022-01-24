#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  web_browser; } ;
typedef  TYPE_1__ WebBrowserContainer ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OLECMDEXECOPT_DONTPROMPTUSER ; 
 int /*<<< orphan*/  OLECMDID_PRINT ; 
#define  WB_GOBACK 134 
#define  WB_GOFORWARD 133 
#define  WB_GOHOME 132 
#define  WB_PRINT 131 
#define  WB_REFRESH 130 
#define  WB_SEARCH 129 
#define  WB_STOP 128 

void FUNC7(WebBrowserContainer *container, DWORD dwAction)
{
    if (!container || !container->web_browser)
        return;

    switch (dwAction)
    {
        case WB_GOBACK:
            FUNC1(container->web_browser);
            break;
        case WB_GOFORWARD:
            FUNC2(container->web_browser);
            break;
        case WB_GOHOME:
            FUNC3(container->web_browser);
            break;
        case WB_SEARCH:
            FUNC4(container->web_browser);
            break;
        case WB_REFRESH:
            FUNC5(container->web_browser);
            break;
        case WB_STOP:
            FUNC6(container->web_browser);
            break;
        case WB_PRINT:
            FUNC0(container->web_browser, OLECMDID_PRINT, OLECMDEXECOPT_DONTPROMPTUSER, 0, 0);
            break;
    }
}