
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int difficulty; int mines; int rows; int cols; int hWnd; int hInst; } ;
typedef int LPARAM ;
typedef int HMENU ;
typedef int DIFFICULTY ;
typedef TYPE_1__ BOARD ;



 int ADVANCED_COLS ;
 int ADVANCED_MINES ;
 int ADVANCED_ROWS ;

 int BEGINNER_COLS ;
 int BEGINNER_MINES ;
 int BEGINNER_ROWS ;

 int CheckMenuItem (int ,int,int ) ;
 int CustomDlgProc ;
 int DLG_CUSTOM ;
 scalar_t__ DialogBoxParamW (int ,int ,int ,int ,int ) ;

 int EXPERT_COLS ;
 int EXPERT_MINES ;
 int EXPERT_ROWS ;
 int GetMenu (int ) ;
 int IDM_BEGINNER ;
 int MAKEINTRESOURCEW (int ) ;
 int MF_CHECKED ;
 int MF_UNCHECKED ;

__attribute__((used)) static void SetDifficulty( BOARD *p_board, DIFFICULTY difficulty )
{
    HMENU hMenu;

    if ( difficulty == 129 )
        if (DialogBoxParamW( p_board->hInst, MAKEINTRESOURCEW(DLG_CUSTOM), p_board->hWnd,
                    CustomDlgProc, (LPARAM) p_board) != 0)
           return;

    hMenu = GetMenu( p_board->hWnd );
    CheckMenuItem( hMenu, IDM_BEGINNER + p_board->difficulty, MF_UNCHECKED );
    p_board->difficulty = difficulty;
    CheckMenuItem( hMenu, IDM_BEGINNER + difficulty, MF_CHECKED );

    switch( difficulty ) {
    case 130:
        p_board->cols = BEGINNER_COLS;
        p_board->rows = BEGINNER_ROWS;
        p_board->mines = BEGINNER_MINES;
        break;

    case 131:
        p_board->cols = ADVANCED_COLS;
        p_board->rows = ADVANCED_ROWS;
        p_board->mines = ADVANCED_MINES;
        break;

    case 128:
        p_board->cols = EXPERT_COLS;
        p_board->rows = EXPERT_ROWS;

        p_board->mines = EXPERT_MINES;
        break;

    case 129:
        break;
    }
}
