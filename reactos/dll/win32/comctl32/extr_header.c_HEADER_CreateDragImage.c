
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t uNumItem; int hwndSelf; int * hFont; TYPE_2__* items; int bRectsValid; } ;
struct TYPE_8__ {int right; int bottom; int top; int left; } ;
struct TYPE_9__ {TYPE_1__ rect; } ;
typedef int RECT ;
typedef int LRESULT ;
typedef size_t INT ;
typedef int * HIMAGELIST ;
typedef int * HFONT ;
typedef TYPE_2__ HEADER_ITEM ;
typedef TYPE_3__ HEADER_INFO ;
typedef int HDC ;
typedef int * HBITMAP ;


 int CDDS_POSTPAINT ;
 int CDDS_PREPAINT ;
 int CDRF_NOTIFYPOSTPAINT ;
 int * CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int *) ;
 int FALSE ;
 int GetClientRect (int ,int *) ;
 int GetDC (int *) ;
 int * GetStockObject (int ) ;
 int HEADER_DrawItem (TYPE_3__*,int ,size_t,int ,int) ;
 int HEADER_SendCtrlCustomDraw (TYPE_3__*,int ,int ,int *) ;
 int HEADER_SetItemBounds (TYPE_3__*) ;
 int ILC_COLORDDB ;
 int ImageList_Add (int *,int *,int *) ;
 int * ImageList_Create (int,int,int ,int,int) ;
 int ReleaseDC (int *,int ) ;
 int SYSTEM_FONT ;
 int * SelectObject (int ,int *) ;
 int SetViewportOrgEx (int ,int ,int ,int *) ;

__attribute__((used)) static HIMAGELIST
HEADER_CreateDragImage (HEADER_INFO *infoPtr, INT iItem)
{
    HEADER_ITEM *lpItem;
    HIMAGELIST himl;
    HBITMAP hMemory, hOldBitmap;
    LRESULT lCDFlags;
    RECT rc;
    HDC hMemoryDC;
    HDC hDeviceDC;
    int height, width;
    HFONT hFont;

    if (iItem >= infoPtr->uNumItem)
        return ((void*)0);

    if (!infoPtr->bRectsValid)
        HEADER_SetItemBounds(infoPtr);

    lpItem = &infoPtr->items[iItem];
    width = lpItem->rect.right - lpItem->rect.left;
    height = lpItem->rect.bottom - lpItem->rect.top;

    hDeviceDC = GetDC(((void*)0));
    hMemoryDC = CreateCompatibleDC(hDeviceDC);
    hMemory = CreateCompatibleBitmap(hDeviceDC, width, height);
    ReleaseDC(((void*)0), hDeviceDC);
    hOldBitmap = SelectObject(hMemoryDC, hMemory);
    SetViewportOrgEx(hMemoryDC, -lpItem->rect.left, -lpItem->rect.top, ((void*)0));
    hFont = infoPtr->hFont ? infoPtr->hFont : GetStockObject(SYSTEM_FONT);
    SelectObject(hMemoryDC, hFont);

    GetClientRect(infoPtr->hwndSelf, &rc);
    lCDFlags = HEADER_SendCtrlCustomDraw(infoPtr, CDDS_PREPAINT, hMemoryDC, &rc);
    HEADER_DrawItem(infoPtr, hMemoryDC, iItem, FALSE, lCDFlags);
    if (lCDFlags & CDRF_NOTIFYPOSTPAINT)
        HEADER_SendCtrlCustomDraw(infoPtr, CDDS_POSTPAINT, hMemoryDC, &rc);

    hMemory = SelectObject(hMemoryDC, hOldBitmap);
    DeleteDC(hMemoryDC);

    if (hMemory == ((void*)0))
        return ((void*)0);

    himl = ImageList_Create(width, height, ILC_COLORDDB, 1, 1);
    ImageList_Add(himl, hMemory, ((void*)0));
    DeleteObject(hMemory);
    return himl;
}
