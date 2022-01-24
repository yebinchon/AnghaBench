#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  CodePageName; } ;
struct TYPE_7__ {int /*<<< orphan*/  Flags; struct TYPE_7__* NextItem; int /*<<< orphan*/ * Name; scalar_t__ CodePage; } ;
typedef  int /*<<< orphan*/  PINT ;
typedef  TYPE_1__* PCPAGE ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  TYPE_2__ CPINFOEX ;
typedef  int /*<<< orphan*/  CPAGE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CODEPAGE_NOT_REMOVEABLE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int MAX_PATH ; 
 TYPE_1__* PCPage ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UNICODE_NULL ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static BOOL
FUNC14(
    HINF hInf)
{
    WCHAR szSection[MAX_PATH];
    INFCONTEXT Context, Context2;
    PCPAGE pCodePage;
    CPINFOEX cpInfEx;
    UINT uiCodePage;

    if (!FUNC6(hInf,
                            L"CodePages",
                            NULL,
                            &Context))
        return FALSE;

    for (;;)
    {
        if (FUNC9(&Context, 0, (PINT)&uiCodePage))
        {
            pCodePage = FUNC4(FUNC3(), 0, sizeof(CPAGE));
            if (pCodePage == NULL)
                return FALSE;

            pCodePage->CodePage = uiCodePage;
            pCodePage->Flags = 0;
            (pCodePage->Name)[0] = UNICODE_NULL;

            if (FUNC1(uiCodePage, 0, &cpInfEx))
            {
                FUNC11(pCodePage->Name, cpInfEx.CodePageName);
            }
            else
            {
                FUNC10(&Context, 1, pCodePage->Name, MAX_PATH, NULL);
            }

            if (FUNC12(pCodePage->Name) != 0)
            {
                pCodePage->NextItem = PCPage;
                PCPage = pCodePage;

                FUNC13(szSection, L"CODEPAGE_REMOVE_%d", uiCodePage);

                if ((uiCodePage == FUNC0()) ||
                    (uiCodePage == FUNC2()) ||
                    (!FUNC7(hInf, szSection, L"AddReg", &Context2)))
                {
                    pCodePage->Flags |= CODEPAGE_NOT_REMOVEABLE;
                }
            }
            else
            {
                FUNC5(FUNC3(), 0, pCodePage);
            }
        }

        if (!FUNC8(&Context, &Context))
            break;
    }

    return TRUE;
}