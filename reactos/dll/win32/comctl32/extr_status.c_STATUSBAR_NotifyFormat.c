
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int bUnicode; scalar_t__ Self; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef scalar_t__ LRESULT ;
typedef scalar_t__ INT ;
typedef int HWND ;


 scalar_t__ NFR_ANSI ;
 scalar_t__ NFR_UNICODE ;
 int NF_QUERY ;
 scalar_t__ NF_REQUERY ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int WM_NOTIFYFORMAT ;

__attribute__((used)) static LRESULT
STATUSBAR_NotifyFormat (STATUS_INFO *infoPtr, HWND from, INT cmd)
{
    if (cmd == NF_REQUERY) {
 INT i = SendMessageW(from, WM_NOTIFYFORMAT, (WPARAM)infoPtr->Self, NF_QUERY);
 infoPtr->bUnicode = (i == NFR_UNICODE);
    }
    return infoPtr->bUnicode ? NFR_UNICODE : NFR_ANSI;
}
