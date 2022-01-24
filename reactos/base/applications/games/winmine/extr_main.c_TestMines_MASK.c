#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int x; int y; } ;
struct TYPE_16__ {int left; int top; } ;
struct TYPE_20__ {int /*<<< orphan*/  hWnd; TYPE_3__ press; int /*<<< orphan*/  status; TYPE_2__** box; TYPE_1__ mines_rect; } ;
struct TYPE_19__ {int x; int y; } ;
struct TYPE_17__ {int /*<<< orphan*/  FlagType; } ;
typedef  TYPE_4__ POINT ;
typedef  scalar_t__ BOOL ;
typedef  TYPE_5__ BOARD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int,int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FLAG ; 
 int MINE_HEIGHT ; 
 int MINE_WIDTH ; 
 int /*<<< orphan*/  PLAYING ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int,int) ; 
 int RDW_INVALIDATE ; 
 int RDW_UPDATENOW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
#define  WM_LBUTTONDOWN 132 
#define  WM_LBUTTONUP 131 
#define  WM_MBUTTONDOWN 130 
#define  WM_MBUTTONUP 129 
#define  WM_RBUTTONDOWN 128 

__attribute__((used)) static void FUNC10( BOARD *p_board, POINT pt, int msg )
{
    BOOL draw = TRUE;
    int col, row;

    col = (pt.x - p_board->mines_rect.left) / MINE_WIDTH + 1;
    row = (pt.y - p_board->mines_rect.top ) / MINE_HEIGHT + 1;

    switch ( msg ) {
    case WM_LBUTTONDOWN:
        if( p_board->press.x != col || p_board->press.y != row ) {
            FUNC7( p_board,
                    p_board->press.x, p_board->press.y );
            p_board->press.x = col;
            p_board->press.y = row;
            FUNC4( p_board, col, row );
        }
        draw = FALSE;
        break;

    case WM_LBUTTONUP:
        if( p_board->press.x != col || p_board->press.y != row )
            FUNC7( p_board,
                    p_board->press.x, p_board->press.y );
        p_board->press.x = 0;
        p_board->press.y = 0;
        if( p_board->box[col][row].FlagType != FLAG
            && p_board->status != PLAYING )
        {
            p_board->status = PLAYING;
            FUNC3( p_board, col, row );
        }
        FUNC1( p_board, col, row );
        break;

    case WM_MBUTTONDOWN:
        FUNC5( p_board, col, row );
        draw = FALSE;
        break;

    case WM_MBUTTONUP:
        if( p_board->press.x != col || p_board->press.y != row )
            FUNC8( p_board,
                    p_board->press.x, p_board->press.y );
        p_board->press.x = 0;
        p_board->press.y = 0;
        FUNC2( p_board, col, row );
        break;

    case WM_RBUTTONDOWN:
        FUNC0( p_board, col, row );
        break;
    default:
        FUNC9("Unknown message type received in TestMines\n");
        break;
    }

    if( draw )
    {
        FUNC6( p_board->hWnd, NULL, 0,
            RDW_INVALIDATE | RDW_UPDATENOW );
    }
}