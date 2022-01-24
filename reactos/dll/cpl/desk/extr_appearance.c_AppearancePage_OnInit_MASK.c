#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WPARAM ;
struct TYPE_23__ {scalar_t__ ThemeActive; TYPE_3__* Theme; TYPE_1__* Color; int /*<<< orphan*/  Size; } ;
struct TYPE_22__ {scalar_t__ pwszFile; scalar_t__ pwszAction; } ;
struct TYPE_21__ {void* bInitializing; TYPE_9__ ActiveTheme; TYPE_3__* pThemes; int /*<<< orphan*/  hbmpThemePreview; int /*<<< orphan*/  hdcThemePreview; TYPE_9__ ClassicTheme; void* bSchemeChanged; void* bThemeChanged; int /*<<< orphan*/  Scheme; } ;
struct TYPE_20__ {scalar_t__ DisplayName; struct TYPE_20__* NextTheme; TYPE_1__* ColoursList; } ;
struct TYPE_19__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
struct TYPE_18__ {int /*<<< orphan*/  ChildStyle; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__* PTHEME ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  scalar_t__ INT_PTR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_4__ GLOBALS ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DWLP_USER ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC6 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IDC_APPEARANCE_PREVIEW ; 
 int /*<<< orphan*/  IDC_APPEARANCE_VISUAL_STYLE ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC16 () ; 
 int /*<<< orphan*/  PSM_CHANGED ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 TYPE_5__ g_GlobalData ; 
 scalar_t__ FUNC22 (scalar_t__,char*) ; 

__attribute__((used)) static INT_PTR
FUNC23(HWND hwndDlg)
{
    INT iListIndex;
    HWND hwndTheme;
    GLOBALS *g;
    RECT rcPreview;
    HDC hdcScreen;
    PTHEME pTheme;

    g = (GLOBALS*)FUNC14(FUNC13(), HEAP_ZERO_MEMORY, sizeof(GLOBALS));
    if (g == NULL)
        return FALSE;

    FUNC21(hwndDlg, DWLP_USER, (LONG_PTR)g);

    g->bInitializing = TRUE;

    if (!FUNC15(&g->Scheme))
        return FALSE;

    g->pThemes = FUNC16();
    if (g->pThemes)
    {
        BOOL bLoadedTheme = FALSE;

        if (g_GlobalData.pwszAction && 
            g_GlobalData.pwszFile && 
            FUNC22(g_GlobalData.pwszAction, L"OpenMSTheme") == 0)
        {
            bLoadedTheme = FUNC6(g->pThemes, 
                                             g_GlobalData.pwszFile,
                                             NULL,
                                             NULL,
                                             &g->ActiveTheme);
        }

        if (bLoadedTheme)
        {
            g->bThemeChanged = TRUE;
            g->bSchemeChanged = TRUE;

            FUNC17(FUNC12(hwndDlg), PSM_CHANGED, (WPARAM)hwndDlg, 0);

            FUNC0(hwndDlg, g);
        }
        else
        {
            if (!FUNC8(g->pThemes, &g->ActiveTheme))
            {
                g->ActiveTheme.ThemeActive = FALSE;
            }
        }

        /*
         * Keep a copy of the selected classic theme in order to select this
         * when user selects the classic theme (and not a horrible random theme )
         */
        if (!FUNC7(g->pThemes, &g->ClassicTheme))
        {
            g->ClassicTheme.Theme = g->pThemes;
            g->ClassicTheme.Color = g->pThemes->ColoursList;
            g->ClassicTheme.Size = g->ClassicTheme.Color->ChildStyle;
        }

        if (g->ActiveTheme.ThemeActive == FALSE)
            g->ActiveTheme = g->ClassicTheme;

        FUNC9(FUNC11(hwndDlg, IDC_APPEARANCE_PREVIEW), &rcPreview);

        hdcScreen = FUNC10(NULL);
        g->hbmpThemePreview = FUNC4(hdcScreen, rcPreview.right, rcPreview.bottom);
        g->hdcThemePreview = FUNC5(hdcScreen);
        FUNC19(g->hdcThemePreview, g->hbmpThemePreview);
        FUNC18(NULL, hdcScreen);

        hwndTheme = FUNC11(hwndDlg, IDC_APPEARANCE_VISUAL_STYLE);

        for (pTheme = g->pThemes; pTheme; pTheme = pTheme->NextTheme)
        {
            iListIndex = FUNC20(hwndTheme, CB_ADDSTRING, 0, (LPARAM)pTheme->DisplayName);
            FUNC20(hwndTheme, CB_SETITEMDATA, iListIndex, (LPARAM)pTheme);
            if (pTheme == g->ActiveTheme.Theme)
            {
                FUNC20(hwndTheme, CB_SETCURSEL, (WPARAM)iListIndex, 0);
            }
        }

        if (g->ActiveTheme.Theme)
        {
            FUNC1(hwndDlg, g);
            FUNC2(hwndDlg, g);
            FUNC3(hwndDlg, g);
        }
    }
    g->bInitializing = FALSE;

    return FALSE;
}