
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_11__ {TYPE_1__* tools; } ;
struct TYPE_10__ {scalar_t__ cbSize; char* lpszText; } ;
struct TYPE_9__ {int * lpszText; } ;
typedef TYPE_2__ TTTOOLINFOW ;
typedef TYPE_3__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int LPSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 int INFOTIPSIZE ;
 int MAX_TEXT_SIZE_A ;
 int TOOLTIPS_GetTipText (TYPE_3__ const*,int,char*) ;
 int TOOLTIPS_GetToolFromInfoT (TYPE_3__ const*,TYPE_2__*) ;
 scalar_t__ TTTOOLINFOW_V1_SIZE ;
 int WideCharToMultiByte (int ,int ,char*,int,int ,int ,int *,int *) ;

__attribute__((used)) static LRESULT
TOOLTIPS_GetTextT (const TOOLTIPS_INFO *infoPtr, TTTOOLINFOW *ti, BOOL isW)
{
    INT nTool;

    if (!ti) return 0;
    if (ti->cbSize < TTTOOLINFOW_V1_SIZE)
 return 0;

    nTool = TOOLTIPS_GetToolFromInfoT (infoPtr, ti);
    if (nTool == -1) return 0;

    if (infoPtr->tools[nTool].lpszText == ((void*)0))
 return 0;

    if (isW) {
        ti->lpszText[0] = '\0';
        TOOLTIPS_GetTipText(infoPtr, nTool, ti->lpszText);
    }
    else {
        WCHAR buffer[INFOTIPSIZE];






        buffer[0] = '\0';
        TOOLTIPS_GetTipText(infoPtr, nTool, buffer);
        WideCharToMultiByte(CP_ACP, 0, buffer, -1, (LPSTR)ti->lpszText,
                                                   MAX_TEXT_SIZE_A, ((void*)0), ((void*)0));
    }

    return 0;
}
