
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hWnd; int hMinesBMP; } ;
typedef int HGDIOBJ ;
typedef int HDC ;
typedef TYPE_1__ BOARD ;


 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DrawMine (int ,int ,TYPE_1__*,unsigned int,unsigned int,int ) ;
 int GetDC (int ) ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int TRUE ;

__attribute__((used)) static void PressBox( BOARD *p_board, unsigned col, unsigned row )
{
    HDC hdc;
    HGDIOBJ hOldObj;
    HDC hMemDC;

    hdc = GetDC( p_board->hWnd );
    hMemDC = CreateCompatibleDC( hdc );
    hOldObj = SelectObject (hMemDC, p_board->hMinesBMP);

    DrawMine( hdc, hMemDC, p_board, col, row, TRUE );

    SelectObject( hMemDC, hOldObj );
    DeleteDC( hMemDC );
    ReleaseDC( p_board->hWnd, hdc );
}
