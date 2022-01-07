
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_5__ {scalar_t__ hwndSelf; TYPE_1__* tools; } ;
struct TYPE_4__ {scalar_t__ bNotifyUnicode; int hwnd; } ;
typedef TYPE_1__ TTTOOL_INFO ;
typedef TYPE_2__ TOOLTIPS_INFO ;
typedef int PVOID ;
typedef scalar_t__ LRESULT ;
typedef scalar_t__ LPARAM ;


 scalar_t__ FALSE ;
 int FIXME (char*,scalar_t__,int ,scalar_t__) ;
 scalar_t__ NFR_ANSI ;
 scalar_t__ NFR_UNICODE ;
 scalar_t__ NF_QUERY ;
 scalar_t__ NF_REQUERY ;
 scalar_t__ SendMessageW (int ,int ,int ,scalar_t__) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int WM_NOTIFYFORMAT ;

__attribute__((used)) static LRESULT
TOOLTIPS_NotifyFormat (TOOLTIPS_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    FIXME ("hwnd=%p wParam=%lx lParam=%lx\n", infoPtr->hwndSelf, wParam, lParam);


    return 0;
}
