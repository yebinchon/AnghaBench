
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ti ;
typedef int WCHAR ;
struct TYPE_10__ {int style; int hwndParent; } ;
struct TYPE_9__ {int dwStyle; int lRangeMax; int lLineSize; int uTicFreq; scalar_t__ hwndToolTip; int hwndNotify; int * tics; scalar_t__ uNumTics; int fLocation; scalar_t__ lPos; scalar_t__ lSelMax; scalar_t__ lSelMin; int lPageSize; scalar_t__ lRangeMin; void* hwndSelf; } ;
struct TYPE_8__ {int cbSize; int uFlags; int * lpszText; void* hwnd; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef void* HWND ;
typedef int DWORD_PTR ;
typedef TYPE_3__ CREATESTRUCTW ;


 TYPE_2__* Alloc (int) ;
 int CW_USEDEFAULT ;
 scalar_t__ CreateWindowExW (int ,int ,int *,int ,int ,int ,int ,int ,void*,int ,int ,int ) ;
 int OpenThemeData (void*,int ) ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int SetWindowLongPtrW (void*,int ,int ) ;
 int TBS_TOOLTIPS ;
 int TBTS_TOP ;
 int TB_DEFAULTPAGESIZE ;
 int TOOLTIPS_CLASSW ;
 int TRACKBAR_InitializeThumb (TYPE_2__*) ;
 int TTF_ABSOLUTE ;
 int TTF_IDISHWND ;
 int TTF_TRACK ;
 int TTM_ADDTOOLW ;
 int WS_POPUP ;
 int ZeroMemory (TYPE_1__*,int) ;
 int themeClass ;

__attribute__((used)) static LRESULT
TRACKBAR_Create (HWND hwnd, const CREATESTRUCTW *lpcs)
{
    TRACKBAR_INFO *infoPtr;

    infoPtr = Alloc (sizeof(TRACKBAR_INFO));
    if (!infoPtr) return -1;
    SetWindowLongPtrW (hwnd, 0, (DWORD_PTR)infoPtr);


    infoPtr->hwndSelf = hwnd;
    infoPtr->dwStyle = lpcs->style;
    infoPtr->lRangeMin = 0;
    infoPtr->lRangeMax = 100;
    infoPtr->lLineSize = 1;
    infoPtr->lPageSize = TB_DEFAULTPAGESIZE;
    infoPtr->lSelMin = 0;
    infoPtr->lSelMax = 0;
    infoPtr->lPos = 0;
    infoPtr->fLocation = TBTS_TOP;
    infoPtr->uNumTics = 0;
    infoPtr->uTicFreq = 1;
    infoPtr->tics = ((void*)0);
    infoPtr->hwndNotify= lpcs->hwndParent;

    TRACKBAR_InitializeThumb (infoPtr);


    if (infoPtr->dwStyle & TBS_TOOLTIPS) {

     infoPtr->hwndToolTip =
            CreateWindowExW (0, TOOLTIPS_CLASSW, ((void*)0), WS_POPUP,
                             CW_USEDEFAULT, CW_USEDEFAULT,
                             CW_USEDEFAULT, CW_USEDEFAULT,
                             hwnd, 0, 0, 0);

     if (infoPtr->hwndToolTip) {
            TTTOOLINFOW ti;
            WCHAR wEmpty = 0;
            ZeroMemory (&ti, sizeof(ti));
            ti.cbSize = sizeof(ti);
          ti.uFlags = TTF_IDISHWND | TTF_TRACK | TTF_ABSOLUTE;
     ti.hwnd = hwnd;
            ti.lpszText = &wEmpty;

            SendMessageW (infoPtr->hwndToolTip, TTM_ADDTOOLW, 0, (LPARAM)&ti);
  }
    }

    OpenThemeData (hwnd, themeClass);

    return 0;
}
