
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int mines; int cols; int rows; TYPE_1__** box; } ;
struct TYPE_4__ {int NumMines; void* IsMine; } ;
typedef TYPE_2__ BOARD ;


 void* FALSE ;
 void* TRUE ;
 int rand () ;
 int srand (unsigned int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void PlaceMines ( BOARD *p_board, int selected_col, int selected_row )
{
    int i, j;
    unsigned col, row;

    srand( (unsigned) time( ((void*)0) ) );



    p_board->box[selected_col][selected_row].IsMine = TRUE;


    i = 0;
    while( (unsigned) i < p_board->mines ) {
        col = rand() % p_board->cols + 1;
        row = rand() % p_board->rows + 1;

        if( !p_board->box[col][row].IsMine ) {
            i++;
            p_board->box[col][row].IsMine = TRUE;
        }
    }


    p_board->box[selected_col][selected_row].IsMine = FALSE;





    for( col = 1; col < p_board->cols + 1; col++ )
    for( row = 1; row < p_board->rows + 1; row++ ) {
        for( i = -1; i <= 1; i++ )
        for( j = -1; j <= 1; j++ ) {
            if( p_board->box[col + i][row + j].IsMine ) {
                p_board->box[col][row].NumMines++ ;
            }
        }
    }
}
