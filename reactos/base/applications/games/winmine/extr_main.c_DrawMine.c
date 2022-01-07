
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ top; scalar_t__ left; } ;
struct TYPE_7__ {unsigned int cols; unsigned int rows; scalar_t__ status; TYPE_2__ mines_rect; TYPE_1__** box; } ;
struct TYPE_5__ {int FlagType; scalar_t__ NumMines; scalar_t__ IsMine; } ;
typedef unsigned int MINEBMP_OFFSET ;
typedef int HDC ;
typedef int BOOL ;
typedef TYPE_3__ BOARD ;


 unsigned int BOX_BMP ;
 int BitBlt (int ,scalar_t__,scalar_t__,unsigned int,unsigned int,int ,int ,unsigned int,int ) ;

 unsigned int EXPLODE_BMP ;

 unsigned int FLAG_BMP ;
 scalar_t__ GAMEOVER ;
 unsigned int MINE_BMP ;
 unsigned int MINE_HEIGHT ;
 unsigned int MINE_WIDTH ;
 unsigned int MPRESS_BMP ;

 unsigned int QPRESS_BMP ;

 unsigned int QUESTION_BMP ;
 int SRCCOPY ;
 int WINE_TRACE (char*) ;
 unsigned int WRONG_BMP ;

__attribute__((used)) static void DrawMine( HDC hdc, HDC hMemDC, BOARD *p_board, unsigned col, unsigned row, BOOL IsPressed )
{
    MINEBMP_OFFSET offset = BOX_BMP;

    if( col == 0 || col > p_board->cols || row == 0 || row > p_board->rows )
           return;

    if( p_board->status == GAMEOVER ) {
        if( p_board->box[col][row].IsMine ) {
            switch( p_board->box[col][row].FlagType ) {
            case 130:
                offset = FLAG_BMP;
                break;
            case 131:
                offset = EXPLODE_BMP;
                break;
            case 128:

            case 129:
                offset = MINE_BMP;
            }
        } else {
            switch( p_board->box[col][row].FlagType ) {
            case 128:
                offset = QUESTION_BMP;
                break;
            case 130:
                offset = WRONG_BMP;
                break;
            case 129:
                offset = BOX_BMP;
                break;
            case 131:

                break;
            default:
                WINE_TRACE("Unknown FlagType during game over in DrawMine\n");
                break;
            }
        }
    } else {
        switch( p_board->box[col][row].FlagType ) {
        case 128:
            if( !IsPressed )
                offset = QUESTION_BMP;
            else
                offset = QPRESS_BMP;
            break;
        case 130:
            offset = FLAG_BMP;
            break;
        case 129:
            if( !IsPressed )
                offset = BOX_BMP;
            else
                offset = MPRESS_BMP;
            break;
        case 131:

            break;
        default:
            WINE_TRACE("Unknown FlagType while playing in DrawMine\n");
            break;
        }
    }

    if( p_board->box[col][row].FlagType == 131
        && !p_board->box[col][row].IsMine )
          offset = (MINEBMP_OFFSET) p_board->box[col][row].NumMines;

    BitBlt( hdc,
            (col - 1) * MINE_WIDTH + p_board->mines_rect.left,
            (row - 1) * MINE_HEIGHT + p_board->mines_rect.top,
            MINE_WIDTH, MINE_HEIGHT,
            hMemDC, 0, offset * MINE_HEIGHT, SRCCOPY );
}
