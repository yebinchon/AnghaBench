
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int top; int left; } ;
struct TYPE_10__ {TYPE_3__ mines_rect; TYPE_3__ face_rect; TYPE_3__ timer_rect; scalar_t__ time; TYPE_3__ counter_rect; scalar_t__ num_flags; scalar_t__ mines; } ;
struct TYPE_9__ {int rcPaint; } ;
typedef int RECT ;
typedef TYPE_1__ PAINTSTRUCT ;
typedef int HDC ;
typedef TYPE_2__ BOARD ;


 int DrawFace (int ,int ,TYPE_2__*) ;
 int DrawLeds (int ,int ,TYPE_2__*,scalar_t__,int ,int ) ;
 int DrawMines (int ,int ,TYPE_2__*) ;
 scalar_t__ IntersectRect (int *,int *,TYPE_3__*) ;

__attribute__((used)) static void DrawBoard( HDC hdc, HDC hMemDC, PAINTSTRUCT *ps, BOARD *p_board )
{
    RECT tmp_rect;

    if( IntersectRect( &tmp_rect, &ps->rcPaint, &p_board->counter_rect ) )
        DrawLeds( hdc, hMemDC, p_board, p_board->mines - p_board->num_flags,
                  p_board->counter_rect.left,
                  p_board->counter_rect.top );

    if( IntersectRect( &tmp_rect, &ps->rcPaint, &p_board->timer_rect ) )
        DrawLeds( hdc, hMemDC, p_board, p_board->time,
                  p_board->timer_rect.left,
                  p_board->timer_rect.top );

    if( IntersectRect( &tmp_rect, &ps->rcPaint, &p_board->face_rect ) )
        DrawFace( hdc, hMemDC, p_board );

    if( IntersectRect( &tmp_rect, &ps->rcPaint, &p_board->mines_rect ) )
        DrawMines( hdc, hMemDC, p_board );
}
