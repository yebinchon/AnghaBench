
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ clr3dHilight; scalar_t__ clrWindow; int clr3dFace; } ;
struct TYPE_9__ {int bottom; int top; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_8__ {int dwStyle; int flags; TYPE_2__ rcThumb; int hwndSelf; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef TYPE_2__ RECT ;
typedef scalar_t__ HTHEME ;
typedef int HDC ;
typedef int HBRUSH ;


 int BF_BOTTOM ;
 int BF_DIAGONAL_ENDBOTTOMLEFT ;
 int BF_DIAGONAL_ENDBOTTOMRIGHT ;
 int BF_DIAGONAL_ENDTOPLEFT ;
 int BF_DIAGONAL_ENDTOPRIGHT ;
 int BF_LEFT ;
 int BF_RECT ;
 int BF_RIGHT ;
 int BF_SOFT ;
 int BF_TOP ;
 int COLOR_BTNFACE ;
 int COLOR_SCROLLBAR ;
 int COMCTL32_hPattern55AABrush ;
 int DrawEdge (int ,TYPE_2__*,int ,int) ;
 int DrawThemeBackground (scalar_t__,int ,int,int,TYPE_2__*,int *) ;
 int EDGE_RAISED ;
 int EDGE_SUNKEN ;
 int GetSysColorBrush (int ) ;
 scalar_t__ GetWindowTheme (int ) ;
 int SetBkColor (int ,scalar_t__) ;
 int SetTextColor (int ,int ) ;
 int TBS_BOTH ;
 int TBS_LEFT ;
 int TBS_TOP ;
 int TBS_VERT ;
 int TB_DRAG_MODE ;
 int TB_THUMB_HOT ;
 int TKP_THUMB ;
 int TKP_THUMBBOTTOM ;
 int TKP_THUMBLEFT ;
 int TKP_THUMBRIGHT ;
 int TKP_THUMBTOP ;
 int TKP_THUMBVERT ;
 int TRACKBAR_FillThumb (TYPE_1__*,int ,int ) ;
 int TUS_DISABLED ;
 int TUS_HOT ;
 int TUS_NORMAL ;
 int TUS_PRESSED ;
 int WS_DISABLED ;
 TYPE_3__ comctl32_color ;

__attribute__((used)) static void
TRACKBAR_DrawThumb (TRACKBAR_INFO *infoPtr, HDC hdc)
{
    HTHEME theme = GetWindowTheme (infoPtr->hwndSelf);
    int PointDepth;
    HBRUSH brush;

    if (theme)
    {
        int partId;
        int stateId;
        if (infoPtr->dwStyle & TBS_BOTH)
            partId = (infoPtr->dwStyle & TBS_VERT) ? TKP_THUMBVERT : TKP_THUMB;
        else if (infoPtr->dwStyle & TBS_LEFT)
            partId = (infoPtr->dwStyle & TBS_VERT) ? TKP_THUMBLEFT : TKP_THUMBTOP;
        else
            partId = (infoPtr->dwStyle & TBS_VERT) ? TKP_THUMBRIGHT : TKP_THUMBBOTTOM;

        if (infoPtr->dwStyle & WS_DISABLED)
            stateId = TUS_DISABLED;
        else if (infoPtr->flags & TB_DRAG_MODE)
            stateId = TUS_PRESSED;
        else if (infoPtr->flags & TB_THUMB_HOT)
            stateId = TUS_HOT;
        else
            stateId = TUS_NORMAL;

        DrawThemeBackground (theme, hdc, partId, stateId, &infoPtr->rcThumb, ((void*)0));

        return;
    }

    if (infoPtr->dwStyle & WS_DISABLED || infoPtr->flags & TB_DRAG_MODE)
    {
        if (comctl32_color.clr3dHilight == comctl32_color.clrWindow)
            brush = COMCTL32_hPattern55AABrush;
        else
            brush = GetSysColorBrush(COLOR_SCROLLBAR);

        SetTextColor(hdc, comctl32_color.clr3dFace);
        SetBkColor(hdc, comctl32_color.clr3dHilight);
    }
    else
        brush = GetSysColorBrush(COLOR_BTNFACE);

    PointDepth = TRACKBAR_FillThumb(infoPtr, hdc, brush);

    if (infoPtr->dwStyle & TBS_BOTH)
    {
       DrawEdge(hdc, &infoPtr->rcThumb, EDGE_RAISED, BF_RECT | BF_SOFT);
       return;
    }
    else
    {
        RECT thumb = infoPtr->rcThumb;

        if (infoPtr->dwStyle & TBS_VERT)
        {
          if (infoPtr->dwStyle & TBS_LEFT)
          {

            thumb.left += PointDepth;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_TOP | BF_RIGHT | BF_BOTTOM | BF_SOFT);


            thumb.left -= PointDepth;
            thumb.right = thumb.left + PointDepth;
            thumb.bottom = infoPtr->rcThumb.top + PointDepth + 1;
            thumb.top = infoPtr->rcThumb.top;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_DIAGONAL_ENDTOPRIGHT | BF_SOFT);


            thumb.top += PointDepth;
            thumb.bottom += PointDepth;
            DrawEdge(hdc, &thumb, EDGE_SUNKEN, BF_DIAGONAL_ENDTOPLEFT | BF_SOFT);
            return;
          }
          else
          {

            thumb.right -= PointDepth;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_TOP | BF_LEFT | BF_BOTTOM | BF_SOFT);


            thumb.left = thumb.right;
            thumb.right += PointDepth + 1;
            thumb.bottom = infoPtr->rcThumb.top + PointDepth + 1;
            thumb.top = infoPtr->rcThumb.top;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_DIAGONAL_ENDTOPLEFT | BF_SOFT);


            thumb.top += PointDepth;
            thumb.bottom += PointDepth;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_DIAGONAL_ENDBOTTOMLEFT | BF_SOFT);
          }
        }
        else
        {
          if (infoPtr->dwStyle & TBS_TOP)
          {

            thumb.top += PointDepth;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_LEFT | BF_BOTTOM | BF_RIGHT | BF_SOFT);


            thumb.left = infoPtr->rcThumb.left;
            thumb.right = thumb.left + PointDepth;
            thumb.bottom = infoPtr->rcThumb.top + PointDepth + 1;
            thumb.top -= PointDepth;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_DIAGONAL_ENDTOPRIGHT | BF_SOFT);


            thumb.left += PointDepth;
            thumb.right += PointDepth;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_DIAGONAL_ENDBOTTOMRIGHT | BF_SOFT);
          }
          else
          {

            thumb.bottom -= PointDepth;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_LEFT | BF_TOP | BF_RIGHT | BF_SOFT);


            thumb.left = infoPtr->rcThumb.left;
            thumb.right = thumb.left + PointDepth;
            thumb.top = infoPtr->rcThumb.bottom - PointDepth - 1;
            thumb.bottom += PointDepth;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_DIAGONAL_ENDTOPLEFT | BF_SOFT);


            thumb.left += PointDepth;
            thumb.right += PointDepth;
            DrawEdge(hdc, &thumb, EDGE_RAISED, BF_DIAGONAL_ENDBOTTOMLEFT | BF_SOFT);
          }
        }
    }
}
