
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int x; int y; } ;
struct TYPE_11__ {int top; int bottom; int left; int right; } ;
struct TYPE_12__ {int cols; int rows; int width; int height; int hWnd; TYPE_2__ pos; scalar_t__ time; int face_bmp; int status; TYPE_3__ counter_rect; TYPE_3__ timer_rect; TYPE_3__ face_rect; TYPE_3__ mines_rect; TYPE_1__** box; scalar_t__ num_flags; scalar_t__ mines; scalar_t__ boxes_left; int mb; } ;
struct TYPE_9__ {scalar_t__ NumMines; int FlagType; void* IsMine; void* IsPressed; } ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__ BOARD ;


 int AdjustWindowRect (TYPE_3__*,int ,int ) ;
 int BOARD_HMARGIN ;
 int BOARD_WMARGIN ;
 int FACE_HEIGHT ;
 int FACE_WIDTH ;
 void* FALSE ;
 int LED_HEIGHT ;
 int LED_WIDTH ;
 int MB_NONE ;
 int MINE_HEIGHT ;
 int MINE_WIDTH ;
 int MoveOnScreen (TYPE_3__*) ;
 int MoveWindow (int ,int ,int ,int ,int ,int ) ;
 int NORMAL ;
 int RDW_ERASE ;
 int RDW_INVALIDATE ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int ,int) ;
 int SMILE_BMP ;
 int SetRect (TYPE_3__*,int,int,int,int) ;
 int TRUE ;
 int WAITING ;
 int wnd_style ;

__attribute__((used)) static void CreateBoard( BOARD *p_board )
{
    int left, top, bottom, right;
    unsigned col, row;
    RECT wnd_rect;

    p_board->mb = MB_NONE;
    p_board->boxes_left = p_board->cols * p_board->rows - p_board->mines;
    p_board->num_flags = 0;





    for( col = 0; col <= p_board->cols + 1; col++ )
      for( row = 0; row <= p_board->rows + 1; row++ ) {
        p_board->box[col][row].IsPressed = FALSE;
        p_board->box[col][row].IsMine = FALSE;
        p_board->box[col][row].FlagType = NORMAL;
        p_board->box[col][row].NumMines = 0;
      }

    p_board->width = p_board->cols * MINE_WIDTH + BOARD_WMARGIN * 2;

    p_board->height = p_board->rows * MINE_HEIGHT + LED_HEIGHT
        + BOARD_HMARGIN * 3;


    left = BOARD_WMARGIN;
    top = BOARD_HMARGIN * 2 + LED_HEIGHT;
    right = left + p_board->cols * MINE_WIDTH;
    bottom = top + p_board->rows * MINE_HEIGHT;
    SetRect( &p_board->mines_rect, left, top, right, bottom );


    left = p_board->width / 2 - FACE_WIDTH / 2;
    top = BOARD_HMARGIN;
    right = left + FACE_WIDTH;
    bottom = top + FACE_HEIGHT;
    SetRect( &p_board->face_rect, left, top, right, bottom );


    left = BOARD_WMARGIN;
    top = BOARD_HMARGIN;
    right = left + LED_WIDTH * 3;
    bottom = top + LED_HEIGHT;
    SetRect( &p_board->timer_rect, left, top, right, bottom );


    left = p_board->width - BOARD_WMARGIN - LED_WIDTH * 3;
    top = BOARD_HMARGIN;
    right = p_board->width - BOARD_WMARGIN;
    bottom = top + LED_HEIGHT;
    SetRect( &p_board->counter_rect, left, top, right, bottom );

    p_board->status = WAITING;
    p_board->face_bmp = SMILE_BMP;
    p_board->time = 0;

    SetRect(&wnd_rect, p_board->pos.x, p_board->pos.y, p_board->pos.x + p_board->width,
            p_board->pos.y + p_board->height);
    AdjustWindowRect(&wnd_rect, wnd_style, TRUE);


    MoveOnScreen(&wnd_rect);
    MoveWindow( p_board->hWnd, wnd_rect.left, wnd_rect.top,
  wnd_rect.right - wnd_rect.left,
  wnd_rect.bottom - wnd_rect.top,
  TRUE );
    RedrawWindow( p_board->hWnd, ((void*)0), 0,
    RDW_INVALIDATE | RDW_UPDATENOW | RDW_ERASE);
}
