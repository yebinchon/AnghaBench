
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; int face_rect; int hWnd; int face_bmp; } ;
typedef int POINT ;
typedef TYPE_1__ BOARD ;


 int COOL_BMP ;
 int CreateBoard (TYPE_1__*) ;
 int DEAD_BMP ;
 scalar_t__ GAMEOVER ;
 int OOH_BMP ;
 scalar_t__ PLAYING ;
 scalar_t__ PtInRect (int *,int ) ;
 int RDW_INVALIDATE ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int ,int) ;
 int SMILE_BMP ;
 int SPRESS_BMP ;
 scalar_t__ WAITING ;
 int WM_LBUTTONDOWN ;
 int WM_LBUTTONUP ;
 int WM_MBUTTONDOWN ;
 scalar_t__ WON ;

__attribute__((used)) static void TestFace( BOARD *p_board, POINT pt, int msg )
{
    if( p_board->status == PLAYING || p_board->status == WAITING ) {
        if( msg == WM_LBUTTONDOWN || msg == WM_MBUTTONDOWN )
            p_board->face_bmp = OOH_BMP;
        else p_board->face_bmp = SMILE_BMP;
    }
    else if( p_board->status == GAMEOVER )
        p_board->face_bmp = DEAD_BMP;
    else if( p_board->status == WON )
            p_board->face_bmp = COOL_BMP;

    if( PtInRect( &p_board->face_rect, pt ) ) {
        if( msg == WM_LBUTTONDOWN )
            p_board->face_bmp = SPRESS_BMP;

        if( msg == WM_LBUTTONUP )
            CreateBoard( p_board );
    }

    RedrawWindow( p_board->hWnd, &p_board->face_rect, 0,
        RDW_INVALIDATE | RDW_UPDATENOW );
}
