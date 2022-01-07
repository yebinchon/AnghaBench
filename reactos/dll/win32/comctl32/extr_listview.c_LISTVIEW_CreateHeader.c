
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {int dwStyle; scalar_t__ himlSmall; scalar_t__ hwndHeader; scalar_t__ hFont; int hwndSelf; } ;
typedef int LPARAM ;
typedef TYPE_1__ LISTVIEW_INFO ;
typedef int INT ;
typedef scalar_t__ HINSTANCE ;
typedef int DWORD ;


 scalar_t__ CreateWindowW (int ,int *,int,int ,int ,int ,int ,int ,int *,scalar_t__,int *) ;
 int GWLP_HINSTANCE ;
 scalar_t__ GetWindowLongPtrW (int ,int ) ;
 int HDM_SETIMAGELIST ;
 int HDM_SETUNICODEFORMAT ;
 int HDS_BUTTONS ;
 int HDS_DRAGDROP ;
 int HDS_FULLDRAG ;
 int HDS_HIDDEN ;
 int HDS_HORZ ;
 int LISTVIEW_UpdateSize (TYPE_1__*) ;
 int LVS_NOCOLUMNHEADER ;
 int LVS_NOSORTHEADER ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int WC_HEADERW ;
 int WM_SETFONT ;
 int WS_CHILD ;

__attribute__((used)) static INT LISTVIEW_CreateHeader(LISTVIEW_INFO *infoPtr)
{
    DWORD dFlags = WS_CHILD | HDS_HORZ | HDS_FULLDRAG | HDS_DRAGDROP;
    HINSTANCE hInst;

    if (infoPtr->hwndHeader) return 0;

    TRACE("Creating header for list %p\n", infoPtr->hwndSelf);


    dFlags |= (LVS_NOSORTHEADER & infoPtr->dwStyle) ? 0 : HDS_BUTTONS;
    dFlags |= (LVS_NOCOLUMNHEADER & infoPtr->dwStyle) ? HDS_HIDDEN : 0;

    hInst = (HINSTANCE)GetWindowLongPtrW(infoPtr->hwndSelf, GWLP_HINSTANCE);


    infoPtr->hwndHeader = CreateWindowW(WC_HEADERW, ((void*)0), dFlags,
      0, 0, 0, 0, infoPtr->hwndSelf, ((void*)0), hInst, ((void*)0));
    if (!infoPtr->hwndHeader) return -1;


    SendMessageW(infoPtr->hwndHeader, HDM_SETUNICODEFORMAT, TRUE, 0);


    SendMessageW(infoPtr->hwndHeader, WM_SETFONT, (WPARAM)infoPtr->hFont, TRUE);


    if (infoPtr->himlSmall)
        SendMessageW(infoPtr->hwndHeader, HDM_SETIMAGELIST, 0, (LPARAM)infoPtr->himlSmall);

    LISTVIEW_UpdateSize(infoPtr);

    return 0;
}
