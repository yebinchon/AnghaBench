
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
struct TYPE_11__ {scalar_t__ lpszText; scalar_t__ szText; int uFlags; int hinst; TYPE_1__ hdr; int lParam; } ;
struct TYPE_10__ {int hwndSelf; } ;
struct TYPE_9__ {int uFlags; int uId; int hwnd; int * lpszText; int hinst; int lParam; } ;
typedef TYPE_2__ TTTOOL_INFO ;
typedef TYPE_3__ TOOLTIPS_INFO ;
typedef TYPE_4__ NMTTDISPINFOA ;
typedef int * LPWSTR ;
typedef int LPARAM ;


 int ERR (char*) ;
 int GetParent (int ) ;
 int INFOTIPSIZE ;
 scalar_t__ IS_INTRESOURCE (scalar_t__) ;
 int LOWORD (scalar_t__) ;
 scalar_t__ LPSTR_TEXTCALLBACKA ;
 int LoadStringW (int ,int ,int*,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int Str_GetPtrAtoW (scalar_t__,int*,int ) ;
 int Str_SetPtrW (int **,int*) ;
 int TRACE (char*,int ) ;
 int TTF_DI_SETITEM ;
 int TTN_GETDISPINFOA ;
 int WM_NOTIFY ;
 int ZeroMemory (TYPE_4__*,int) ;

__attribute__((used)) static void TOOLTIPS_GetDispInfoA(const TOOLTIPS_INFO *infoPtr, TTTOOL_INFO *toolPtr, WCHAR *buffer)
{
    NMTTDISPINFOA ttnmdi;


    ZeroMemory (&ttnmdi, sizeof(NMTTDISPINFOA));
    ttnmdi.hdr.hwndFrom = infoPtr->hwndSelf;
    ttnmdi.hdr.idFrom = toolPtr->uId;
    ttnmdi.hdr.code = TTN_GETDISPINFOA;
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
            toolPtr->lpszText = (LPWSTR)ttnmdi.lpszText;
        }
    }
    else if (ttnmdi.lpszText == 0) {
        buffer[0] = '\0';
    }
    else if (ttnmdi.lpszText != LPSTR_TEXTCALLBACKA) {
        Str_GetPtrAtoW(ttnmdi.lpszText, buffer, INFOTIPSIZE);
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
                   ttnmdi.lpszText != LPSTR_TEXTCALLBACKA) {
            Str_GetPtrAtoW(ttnmdi.lpszText, buffer, INFOTIPSIZE);
        }
    }
}
