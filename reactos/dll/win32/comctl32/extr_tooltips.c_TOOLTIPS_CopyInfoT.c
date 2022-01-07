
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* tools; } ;
struct TYPE_7__ {scalar_t__ cbSize; int lParam; int * lpszText; int hinst; int rect; int uId; int hwnd; int uFlags; } ;
struct TYPE_6__ {int lParam; int * lpszText; int hinst; int rect; int uId; int hwnd; int uFlags; } ;
typedef TYPE_1__ TTTOOL_INFO ;
typedef TYPE_2__ TTTOOLINFOW ;
typedef TYPE_3__ TOOLTIPS_INFO ;
typedef int LPSTR ;
typedef size_t INT ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 scalar_t__ IS_INTRESOURCE (int *) ;
 int * LPSTR_TEXTCALLBACKW ;
 int MAX_TEXT_SIZE_A ;
 scalar_t__ TTTOOLINFOW_V2_SIZE ;
 int WideCharToMultiByte (int ,int ,int *,int,int ,int ,int *,int *) ;
 int strcpyW (int *,int *) ;

__attribute__((used)) static inline void
TOOLTIPS_CopyInfoT (const TOOLTIPS_INFO *infoPtr, INT index, TTTOOLINFOW *ti, BOOL isW)
{
    const TTTOOL_INFO *toolPtr = &infoPtr->tools[index];

    ti->uFlags = toolPtr->uFlags;
    ti->hwnd = toolPtr->hwnd;
    ti->uId = toolPtr->uId;
    ti->rect = toolPtr->rect;
    ti->hinst = toolPtr->hinst;

    if (ti->lpszText) {
        if (toolPtr->lpszText == ((void*)0) ||
            IS_INTRESOURCE(toolPtr->lpszText) ||
            toolPtr->lpszText == LPSTR_TEXTCALLBACKW)
            ti->lpszText = toolPtr->lpszText;
        else if (isW)
            strcpyW (ti->lpszText, toolPtr->lpszText);
        else

            WideCharToMultiByte(CP_ACP, 0, toolPtr->lpszText, -1,
                                (LPSTR)ti->lpszText, MAX_TEXT_SIZE_A, ((void*)0), ((void*)0));
    }

    if (ti->cbSize >= TTTOOLINFOW_V2_SIZE)
        ti->lParam = toolPtr->lParam;


}
