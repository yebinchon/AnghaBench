
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int NtfUnicode; scalar_t__ hwndSelf; int hwndNotify; } ;
typedef scalar_t__ LRESULT ;
typedef scalar_t__ LPARAM ;
typedef scalar_t__ INT ;
typedef TYPE_1__ COMBOEX_INFO ;


 scalar_t__ NFR_ANSI ;
 scalar_t__ NFR_UNICODE ;
 int NF_QUERY ;
 scalar_t__ NF_REQUERY ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int WM_NOTIFYFORMAT ;

__attribute__((used)) static LRESULT COMBOEX_NotifyFormat (COMBOEX_INFO *infoPtr, LPARAM lParam)
{
    if (lParam == NF_REQUERY) {
 INT i = SendMessageW(infoPtr->hwndNotify,
    WM_NOTIFYFORMAT, (WPARAM)infoPtr->hwndSelf, NF_QUERY);
        infoPtr->NtfUnicode = (i == NFR_UNICODE);
    }
    return infoPtr->NtfUnicode ? NFR_UNICODE : NFR_ANSI;
}
