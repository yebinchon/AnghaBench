
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int x; int y; } ;
struct TYPE_16__ {int left; int top; } ;
struct TYPE_20__ {int hWnd; TYPE_3__ press; int status; TYPE_2__** box; TYPE_1__ mines_rect; } ;
struct TYPE_19__ {int x; int y; } ;
struct TYPE_17__ {int FlagType; } ;
typedef TYPE_4__ POINT ;
typedef scalar_t__ BOOL ;
typedef TYPE_5__ BOARD ;


 int AddFlag (TYPE_5__*,int,int) ;
 int CompleteBox (TYPE_5__*,int,int) ;
 int CompleteBoxes (TYPE_5__*,int,int) ;
 scalar_t__ FALSE ;
 int FLAG ;
 int MINE_HEIGHT ;
 int MINE_WIDTH ;
 int PLAYING ;
 int PlaceMines (TYPE_5__*,int,int) ;
 int PressBox (TYPE_5__*,int,int) ;
 int PressBoxes (TYPE_5__*,int,int) ;
 int RDW_INVALIDATE ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int ,int) ;
 scalar_t__ TRUE ;
 int UnpressBox (TYPE_5__*,int,int) ;
 int UnpressBoxes (TYPE_5__*,int,int) ;
 int WINE_TRACE (char*) ;






__attribute__((used)) static void TestMines( BOARD *p_board, POINT pt, int msg )
{
    BOOL draw = TRUE;
    int col, row;

    col = (pt.x - p_board->mines_rect.left) / MINE_WIDTH + 1;
    row = (pt.y - p_board->mines_rect.top ) / MINE_HEIGHT + 1;

    switch ( msg ) {
    case 132:
        if( p_board->press.x != col || p_board->press.y != row ) {
            UnpressBox( p_board,
                    p_board->press.x, p_board->press.y );
            p_board->press.x = col;
            p_board->press.y = row;
            PressBox( p_board, col, row );
        }
        draw = FALSE;
        break;

    case 131:
        if( p_board->press.x != col || p_board->press.y != row )
            UnpressBox( p_board,
                    p_board->press.x, p_board->press.y );
        p_board->press.x = 0;
        p_board->press.y = 0;
        if( p_board->box[col][row].FlagType != FLAG
            && p_board->status != PLAYING )
        {
            p_board->status = PLAYING;
            PlaceMines( p_board, col, row );
        }
        CompleteBox( p_board, col, row );
        break;

    case 130:
        PressBoxes( p_board, col, row );
        draw = FALSE;
        break;

    case 129:
        if( p_board->press.x != col || p_board->press.y != row )
            UnpressBoxes( p_board,
                    p_board->press.x, p_board->press.y );
        p_board->press.x = 0;
        p_board->press.y = 0;
        CompleteBoxes( p_board, col, row );
        break;

    case 128:
        AddFlag( p_board, col, row );
        break;
    default:
        WINE_TRACE("Unknown message type received in TestMines\n");
        break;
    }

    if( draw )
    {
        RedrawWindow( p_board->hWnd, ((void*)0), 0,
            RDW_INVALIDATE | RDW_UPDATENOW );
    }
}
