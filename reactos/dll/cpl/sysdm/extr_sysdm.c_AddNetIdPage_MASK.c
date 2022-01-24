#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PROPSHEETHEADER ;
typedef  int /*<<< orphan*/ * (* PCreateNetIDPropertyPage ) () ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HPROPSHEETPAGE ;
typedef  int /*<<< orphan*/ * HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static HMODULE
FUNC6(PROPSHEETHEADER *ppsh)
{
    HPROPSHEETPAGE hPage;
    HMODULE hMod;
    PCreateNetIDPropertyPage pCreateNetIdPage;

    hMod = FUNC3(FUNC5("netid.dll"));
    if (hMod != NULL)
    {
        pCreateNetIdPage = (PCreateNetIDPropertyPage)FUNC2(hMod,
                                                                    "CreateNetIDPropertyPage");
        if (pCreateNetIdPage != NULL)
        {
            hPage = pCreateNetIdPage();
            if (hPage == NULL)
                goto Fail;

            if (!FUNC4(hPage, (LPARAM)ppsh))
            {
                FUNC0(hPage);
                goto Fail;
            }
        }
        else
        {
Fail:
            FUNC1(hMod);
            hMod = NULL;
        }
    }

    return hMod;
}