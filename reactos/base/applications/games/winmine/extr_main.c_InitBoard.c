
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ IsMarkQ; scalar_t__ difficulty; int hWnd; int hInst; void* hLedsBMP; void* hFacesBMP; void* hMinesBMP; } ;
typedef int HMENU ;
typedef TYPE_1__ BOARD ;


 int CheckLevel (TYPE_1__*) ;
 int CheckMenuItem (int ,unsigned int,int ) ;
 int GetMenu (int ) ;
 int IDI_FACES ;
 int IDI_LEDS ;
 int IDI_MINES ;
 unsigned int IDM_BEGINNER ;
 unsigned int IDM_MARKQ ;
 void* LoadBitmapW (int ,int ) ;
 int LoadBoard (TYPE_1__*) ;
 int MAKEINTRESOURCEW (int ) ;
 int MF_CHECKED ;
 int MF_UNCHECKED ;

__attribute__((used)) static void InitBoard( BOARD *p_board )
{
    HMENU hMenu;

    p_board->hMinesBMP = LoadBitmapW( p_board->hInst, MAKEINTRESOURCEW(IDI_MINES));
    p_board->hFacesBMP = LoadBitmapW( p_board->hInst, MAKEINTRESOURCEW(IDI_FACES));
    p_board->hLedsBMP = LoadBitmapW( p_board->hInst, MAKEINTRESOURCEW(IDI_LEDS));

    LoadBoard( p_board );

    hMenu = GetMenu( p_board->hWnd );
    CheckMenuItem( hMenu, IDM_BEGINNER + (unsigned) p_board->difficulty,
            MF_CHECKED );
    if( p_board->IsMarkQ )
        CheckMenuItem( hMenu, IDM_MARKQ, MF_CHECKED );
    else
        CheckMenuItem( hMenu, IDM_MARKQ, MF_UNCHECKED );
    CheckLevel( p_board );
}
