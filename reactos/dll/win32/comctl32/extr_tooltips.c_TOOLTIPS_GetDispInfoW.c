
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_11__ {int uFlags; scalar_t__ lpszText; int hinst; TYPE_1__ hdr; int lParam; int * szText; } ;
struct TYPE_10__ {int hwndSelf; } ;
struct TYPE_9__ {int uFlags; int uId; int hwnd; int * lpszText; int hinst; int lParam; } ;
typedef TYPE_2__ TTTOOL_INFO ;
typedef TYPE_3__ TOOLTIPS_INFO ;
typedef TYPE_4__ NMTTDISPINFOW ;
typedef int LPARAM ;


 int ERR (char*) ;
 int GetParent (int ) ;
 int INFOTIPSIZE ;
 scalar_t__ IS_INTRESOURCE (int *) ;
 int LOWORD (int *) ;
 scalar_t__ LPSTR_TEXTCALLBACKW ;
 int LoadStringW (int ,int ,int*,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int Str_GetPtrW (scalar_t__,int*,int ) ;
 int Str_SetPtrW (int **,int*) ;
 int TRACE (char*,int ) ;
 int TTF_DI_SETITEM ;
 int TTN_GETDISPINFOW ;
 int WM_NOTIFY ;
 int ZeroMemory (TYPE_4__*,int) ;

__attribute__((used)) static void TOOLTIPS_GetDispInfoW(const TOOLTIPS_INFO *infoPtr, TTTOOL_INFO *toolPtr, WCHAR *buffer)
{
    NMTTDISPINFOW ttnmdi;


    ZeroMemory (&ttnmdi, sizeof(NMTTDISPINFOW));
    ttnmdi.hdr.hwndFrom = infoPtr->hwndSelf;
    ttnmdi.hdr.idFrom = toolPtr->uId;
    ttnmdi.hdr.code = TTN_GETDISPINFOW;
    ttnmdi.lpszText = ttnmdi.szText;
    ttnmdi.uFlags = toolPtr->uFlags;
    ttnmdi.lParam = toolPtr->lParam;

    TRACE("hdr.idFrom = %lx\n", ttnmdi.hdr.idFrom);
    SendMessageW(toolPtr->hwnd, WM_NOTIFY, toolPtr->uId, (LPARAM)&ttnmdi);

    if (IS_INTRESOURCE(ttnmdi.lpszText)) {
        LoadStringW(ttnmdi.hinst, LOWORD(ttnmdi.lpszText),
               buffer, INFOTIPSIZE);
        if (ttnmdi.uFlags & TTF_DI_SETITEM) {
            toolPtr->hinst = ttnmdi.hinst;
            toolPtr->lpszText = ttnmdi.lpszText;
        }
    }
    else if (ttnmdi.lpszText == 0) {
        buffer[0] = '\0';
    }
    else if (ttnmdi.lpszText != LPSTR_TEXTCALLBACKW) {
        Str_GetPtrW(ttnmdi.lpszText, buffer, INFOTIPSIZE);
        if (ttnmdi.uFlags & TTF_DI_SETITEM) {
            toolPtr->hinst = 0;
            toolPtr->lpszText = ((void*)0);
            Str_SetPtrW(&toolPtr->lpszText, buffer);
        }
    }
    else {
        ERR("recursive text callback\n");
        buffer[0] = '\0';
    }



    if (buffer[0] == 0x00) {

        SendMessageW(GetParent(toolPtr->hwnd), WM_NOTIFY, toolPtr->uId, (LPARAM)&ttnmdi);

        if (IS_INTRESOURCE(ttnmdi.lpszText)) {
            LoadStringW(ttnmdi.hinst, LOWORD(ttnmdi.lpszText),
                   buffer, INFOTIPSIZE);
        } else if (ttnmdi.lpszText &&
                   ttnmdi.lpszText != LPSTR_TEXTCALLBACKW) {
            Str_GetPtrW(ttnmdi.lpszText, buffer, INFOTIPSIZE);
        }
    }

}
