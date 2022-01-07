
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int right; int left; int bottom; int top; } ;
struct TYPE_9__ {int hDlg; TYPE_2__ rtDrawRect; } ;
typedef TYPE_1__ pagesetup_data ;
struct TYPE_11__ {int y; int x; } ;
typedef TYPE_2__ RECT ;
typedef int LONG ;


 scalar_t__ DMORIENT_LANDSCAPE ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int InvalidateRect (int ,TYPE_2__*,int ) ;
 int MoveWindow (int ,int,int,int const,int const,int ) ;
 int TRACE (char*,int ,int,int,int,int) ;
 int TRUE ;
 scalar_t__ pagesetup_get_orientation (TYPE_1__ const*) ;
 TYPE_4__* pagesetup_get_papersize_pt (TYPE_1__ const*) ;
 int rct1 ;
 int rct2 ;
 int rct3 ;
 int wine_dbgstr_rect (TYPE_2__*) ;

__attribute__((used)) static void pagesetup_change_preview(const pagesetup_data *data)
{
    LONG width, height, x, y;
    RECT tmp;
    const int shadow = 4;

    if(pagesetup_get_orientation(data) == DMORIENT_LANDSCAPE)
    {
        width = data->rtDrawRect.right - data->rtDrawRect.left;
        height = pagesetup_get_papersize_pt(data)->y * width / pagesetup_get_papersize_pt(data)->x;
    }
    else
    {
        height = data->rtDrawRect.bottom - data->rtDrawRect.top;
        width = pagesetup_get_papersize_pt(data)->x * height / pagesetup_get_papersize_pt(data)->y;
    }
    x = (data->rtDrawRect.right + data->rtDrawRect.left - width) / 2;
    y = (data->rtDrawRect.bottom + data->rtDrawRect.top - height) / 2;
    TRACE("draw rect %s x=%d, y=%d, w=%d, h=%d\n",
          wine_dbgstr_rect(&data->rtDrawRect), x, y, width, height);

    MoveWindow(GetDlgItem(data->hDlg, rct2), x + width, y + shadow, shadow, height, FALSE);
    MoveWindow(GetDlgItem(data->hDlg, rct3), x + shadow, y + height, width, shadow, FALSE);
    MoveWindow(GetDlgItem(data->hDlg, rct1), x, y, width, height, FALSE);

    tmp = data->rtDrawRect;
    tmp.right += shadow;
    tmp.bottom += shadow;
    InvalidateRect(data->hDlg, &tmp, TRUE);
}
