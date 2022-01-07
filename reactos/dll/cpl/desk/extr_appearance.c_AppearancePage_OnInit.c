
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_23__ {scalar_t__ ThemeActive; TYPE_3__* Theme; TYPE_1__* Color; int Size; } ;
struct TYPE_22__ {scalar_t__ pwszFile; scalar_t__ pwszAction; } ;
struct TYPE_21__ {void* bInitializing; TYPE_9__ ActiveTheme; TYPE_3__* pThemes; int hbmpThemePreview; int hdcThemePreview; TYPE_9__ ClassicTheme; void* bSchemeChanged; void* bThemeChanged; int Scheme; } ;
struct TYPE_20__ {scalar_t__ DisplayName; struct TYPE_20__* NextTheme; TYPE_1__* ColoursList; } ;
struct TYPE_19__ {int bottom; int right; } ;
struct TYPE_18__ {int ChildStyle; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* PTHEME ;
typedef int LPARAM ;
typedef int LONG_PTR ;
typedef scalar_t__ INT_PTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;
typedef int HDC ;
typedef TYPE_4__ GLOBALS ;
typedef scalar_t__ BOOL ;


 int AppearancePage_LoadSelectedScheme (scalar_t__,TYPE_4__*) ;
 int AppearancePage_ShowColorSchemes (scalar_t__,TYPE_4__*) ;
 int AppearancePage_ShowSizes (scalar_t__,TYPE_4__*) ;
 int AppearancePage_UpdateThemePreview (scalar_t__,TYPE_4__*) ;
 int CB_ADDSTRING ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 int CreateCompatibleBitmap (int ,int ,int ) ;
 int CreateCompatibleDC (int ) ;
 int DWLP_USER ;
 scalar_t__ FALSE ;
 scalar_t__ FindOrAppendTheme (TYPE_3__*,scalar_t__,int *,int *,TYPE_9__*) ;
 int GetActiveClassicTheme (TYPE_3__*,TYPE_9__*) ;
 int GetActiveTheme (TYPE_3__*,TYPE_9__*) ;
 int GetClientRect (scalar_t__,TYPE_2__*) ;
 int GetDC (int *) ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int GetParent (scalar_t__) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int IDC_APPEARANCE_PREVIEW ;
 int IDC_APPEARANCE_VISUAL_STYLE ;
 int LoadCurrentScheme (int *) ;
 TYPE_3__* LoadThemes () ;
 int PSM_CHANGED ;
 int PostMessageW (int ,int ,scalar_t__,int ) ;
 int ReleaseDC (int *,int ) ;
 int SelectObject (int ,int ) ;
 scalar_t__ SendMessage (scalar_t__,int ,scalar_t__,int ) ;
 int SetWindowLongPtr (scalar_t__,int ,int ) ;
 void* TRUE ;
 TYPE_5__ g_GlobalData ;
 scalar_t__ wcscmp (scalar_t__,char*) ;

__attribute__((used)) static INT_PTR
AppearancePage_OnInit(HWND hwndDlg)
{
    INT iListIndex;
    HWND hwndTheme;
    GLOBALS *g;
    RECT rcPreview;
    HDC hdcScreen;
    PTHEME pTheme;

    g = (GLOBALS*)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(GLOBALS));
    if (g == ((void*)0))
        return FALSE;

    SetWindowLongPtr(hwndDlg, DWLP_USER, (LONG_PTR)g);

    g->bInitializing = TRUE;

    if (!LoadCurrentScheme(&g->Scheme))
        return FALSE;

    g->pThemes = LoadThemes();
    if (g->pThemes)
    {
        BOOL bLoadedTheme = FALSE;

        if (g_GlobalData.pwszAction &&
            g_GlobalData.pwszFile &&
            wcscmp(g_GlobalData.pwszAction, L"OpenMSTheme") == 0)
        {
            bLoadedTheme = FindOrAppendTheme(g->pThemes,
                                             g_GlobalData.pwszFile,
                                             ((void*)0),
                                             ((void*)0),
                                             &g->ActiveTheme);
        }

        if (bLoadedTheme)
        {
            g->bThemeChanged = TRUE;
            g->bSchemeChanged = TRUE;

            PostMessageW(GetParent(hwndDlg), PSM_CHANGED, (WPARAM)hwndDlg, 0);

            AppearancePage_LoadSelectedScheme(hwndDlg, g);
        }
        else
        {
            if (!GetActiveTheme(g->pThemes, &g->ActiveTheme))
            {
                g->ActiveTheme.ThemeActive = FALSE;
            }
        }





        if (!GetActiveClassicTheme(g->pThemes, &g->ClassicTheme))
        {
            g->ClassicTheme.Theme = g->pThemes;
            g->ClassicTheme.Color = g->pThemes->ColoursList;
            g->ClassicTheme.Size = g->ClassicTheme.Color->ChildStyle;
        }

        if (g->ActiveTheme.ThemeActive == FALSE)
            g->ActiveTheme = g->ClassicTheme;

        GetClientRect(GetDlgItem(hwndDlg, IDC_APPEARANCE_PREVIEW), &rcPreview);

        hdcScreen = GetDC(((void*)0));
        g->hbmpThemePreview = CreateCompatibleBitmap(hdcScreen, rcPreview.right, rcPreview.bottom);
        g->hdcThemePreview = CreateCompatibleDC(hdcScreen);
        SelectObject(g->hdcThemePreview, g->hbmpThemePreview);
        ReleaseDC(((void*)0), hdcScreen);

        hwndTheme = GetDlgItem(hwndDlg, IDC_APPEARANCE_VISUAL_STYLE);

        for (pTheme = g->pThemes; pTheme; pTheme = pTheme->NextTheme)
        {
            iListIndex = SendMessage(hwndTheme, CB_ADDSTRING, 0, (LPARAM)pTheme->DisplayName);
            SendMessage(hwndTheme, CB_SETITEMDATA, iListIndex, (LPARAM)pTheme);
            if (pTheme == g->ActiveTheme.Theme)
            {
                SendMessage(hwndTheme, CB_SETCURSEL, (WPARAM)iListIndex, 0);
            }
        }

        if (g->ActiveTheme.Theme)
        {
            AppearancePage_ShowColorSchemes(hwndDlg, g);
            AppearancePage_ShowSizes(hwndDlg, g);
            AppearancePage_UpdateThemePreview(hwndDlg, g);
        }
    }
    g->bInitializing = FALSE;

    return FALSE;
}
