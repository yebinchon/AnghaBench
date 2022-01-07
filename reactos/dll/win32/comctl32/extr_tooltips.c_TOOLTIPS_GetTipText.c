
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_9__ {int hwndSelf; TYPE_1__* tools; } ;
struct TYPE_8__ {scalar_t__ lpszText; scalar_t__ bNotifyUnicode; int hinst; } ;
typedef TYPE_1__ TTTOOL_INFO ;
typedef TYPE_2__ TOOLTIPS_INFO ;
typedef size_t INT ;


 int GWL_STYLE ;
 int GetWindowLongW (int ,int ) ;
 int INFOTIPSIZE ;
 scalar_t__ IS_INTRESOURCE (scalar_t__) ;
 int LOWORD (scalar_t__) ;
 scalar_t__ LPSTR_TEXTCALLBACKW ;
 int LoadStringW (int ,int ,char*,int ) ;
 int TOOLTIPS_GetDispInfoA (TYPE_2__ const*,TYPE_1__*,char*) ;
 int TOOLTIPS_GetDispInfoW (TYPE_2__ const*,TYPE_1__*,char*) ;
 int TRACE (char*,int ,...) ;
 int TTS_NOPREFIX ;
 int debugstr_w (char*) ;
 int lstrcpynW (char*,scalar_t__,int ) ;
 char* strchrW (char*,char) ;

__attribute__((used)) static void
TOOLTIPS_GetTipText (const TOOLTIPS_INFO *infoPtr, INT nTool, WCHAR *buffer)
{
    TTTOOL_INFO *toolPtr = &infoPtr->tools[nTool];

    if (IS_INTRESOURCE(toolPtr->lpszText)) {

 TRACE("load res string %p %x\n",
        toolPtr->hinst, LOWORD(toolPtr->lpszText));
 if (!LoadStringW (toolPtr->hinst, LOWORD(toolPtr->lpszText), buffer, INFOTIPSIZE))
     buffer[0] = '\0';
    }
    else if (toolPtr->lpszText) {
 if (toolPtr->lpszText == LPSTR_TEXTCALLBACKW) {
     if (toolPtr->bNotifyUnicode)
  TOOLTIPS_GetDispInfoW(infoPtr, toolPtr, buffer);
     else
  TOOLTIPS_GetDispInfoA(infoPtr, toolPtr, buffer);
 }
 else {

     lstrcpynW (buffer, toolPtr->lpszText, INFOTIPSIZE);
 }
    }
    else {

        buffer[0] = '\0';
    }

    if (!(GetWindowLongW(infoPtr->hwndSelf, GWL_STYLE) & TTS_NOPREFIX)) {
        WCHAR *ptrW;
        if ((ptrW = strchrW(buffer, '\t')))
            *ptrW = 0;
    }

    TRACE("%s\n", debugstr_w(buffer));
}
