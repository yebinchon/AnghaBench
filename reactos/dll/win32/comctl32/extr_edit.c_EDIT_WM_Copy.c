
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ text; int hwndSelf; int selection_end; int selection_start; } ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__ INT ;
typedef int HGLOBAL ;
typedef TYPE_1__ EDITSTATE ;
typedef int DWORD ;


 int CF_UNICODETEXT ;
 int CloseClipboard () ;
 int EmptyClipboard () ;
 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int GlobalAlloc (int,int) ;
 scalar_t__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int OpenClipboard (int ) ;
 int SetClipboardData (int ,int ) ;
 int TRACE (char*,int ) ;
 int debugstr_w (scalar_t__*) ;
 scalar_t__ max (int ,int ) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 scalar_t__ min (int ,int ) ;

__attribute__((used)) static void EDIT_WM_Copy(EDITSTATE *es)
{
 INT s = min(es->selection_start, es->selection_end);
 INT e = max(es->selection_start, es->selection_end);
 HGLOBAL hdst;
 LPWSTR dst;
 DWORD len;

 if (e == s) return;

 len = e - s;
 hdst = GlobalAlloc(GMEM_MOVEABLE | GMEM_DDESHARE, (len + 1) * sizeof(WCHAR));
 dst = GlobalLock(hdst);
 memcpy(dst, es->text + s, len * sizeof(WCHAR));
 dst[len] = 0;
 TRACE("%s\n", debugstr_w(dst));
 GlobalUnlock(hdst);
 OpenClipboard(es->hwndSelf);
 EmptyClipboard();
 SetClipboardData(CF_UNICODETEXT, hdst);
 CloseClipboard();
}
