
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int hwndParent; int style; } ;
struct TYPE_9__ {int nrFieldsAllocated; int select; int hFont; void* dateValid; int date; int hwndSelf; int hMonthCal; void* bDropdownEnabled; int hwndNotify; void* buflen; void* fieldRect; void* fieldspec; int dwStyle; } ;
struct TYPE_8__ {int member_1; int member_0; } ;
typedef TYPE_1__ STYLESTRUCT ;
typedef int RECT ;
typedef int LRESULT ;
typedef int HWND ;
typedef int DWORD_PTR ;
typedef TYPE_2__ DATETIME_INFO ;
typedef TYPE_3__ CREATESTRUCTW ;


 void* Alloc (int) ;
 int CreateWindowExW (int ,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int DATETIME_SetFormatW (TYPE_2__*,int ) ;
 int DATETIME_StyleChanged (TYPE_2__*,int ,TYPE_1__*) ;
 int DEFAULT_GUI_FONT ;
 int GWL_STYLE ;
 int GetLocalTime (int *) ;
 int GetStockObject (int ) ;
 int MONTHCAL_CLASSW ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 void* TRUE ;
 int WS_BORDER ;
 int WS_CLIPSIBLINGS ;
 int WS_POPUP ;

__attribute__((used)) static LRESULT
DATETIME_Create (HWND hwnd, const CREATESTRUCTW *lpcs)
{
    DATETIME_INFO *infoPtr = Alloc (sizeof(DATETIME_INFO));
    STYLESTRUCT ss = { 0, lpcs->style };

    if (!infoPtr) return -1;

    infoPtr->hwndSelf = hwnd;
    infoPtr->dwStyle = lpcs->style;

    infoPtr->nrFieldsAllocated = 32;
    infoPtr->fieldspec = Alloc (infoPtr->nrFieldsAllocated * sizeof(int));
    infoPtr->fieldRect = Alloc (infoPtr->nrFieldsAllocated * sizeof(RECT));
    infoPtr->buflen = Alloc (infoPtr->nrFieldsAllocated * sizeof(int));
    infoPtr->hwndNotify = lpcs->hwndParent;
    infoPtr->select = -1;
    infoPtr->bDropdownEnabled = TRUE;

    DATETIME_StyleChanged(infoPtr, GWL_STYLE, &ss);
    DATETIME_SetFormatW (infoPtr, 0);


    infoPtr->hMonthCal = CreateWindowExW (0, MONTHCAL_CLASSW, 0, WS_BORDER | WS_POPUP | WS_CLIPSIBLINGS,
       0, 0, 0, 0, infoPtr->hwndSelf, 0, 0, 0);


    GetLocalTime (&infoPtr->date);
    infoPtr->dateValid = TRUE;
    infoPtr->hFont = GetStockObject(DEFAULT_GUI_FONT);

    SetWindowLongPtrW (hwnd, 0, (DWORD_PTR)infoPtr);

    return 0;
}
