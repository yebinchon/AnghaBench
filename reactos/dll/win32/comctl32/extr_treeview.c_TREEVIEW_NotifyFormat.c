
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int bNtfUnicode; scalar_t__ hwnd; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef scalar_t__ INT ;
typedef int HWND ;


 scalar_t__ NFR_ANSI ;
 scalar_t__ NFR_UNICODE ;
 int NF_QUERY ;
 scalar_t__ NF_REQUERY ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,scalar_t__,...) ;
 int WM_NOTIFYFORMAT ;

__attribute__((used)) static INT TREEVIEW_NotifyFormat (TREEVIEW_INFO *infoPtr, HWND hwndFrom, UINT nCommand)
{
    INT format;

    TRACE("(hwndFrom=%p, nCommand=%d)\n", hwndFrom, nCommand);

    if (nCommand != NF_REQUERY) return 0;

    format = SendMessageW(hwndFrom, WM_NOTIFYFORMAT, (WPARAM)infoPtr->hwnd, NF_QUERY);
    TRACE("format=%d\n", format);


    if (format != NFR_ANSI && format != NFR_UNICODE)
        format = NFR_ANSI;

    infoPtr->bNtfUnicode = (format == NFR_UNICODE);

    return format;
}
