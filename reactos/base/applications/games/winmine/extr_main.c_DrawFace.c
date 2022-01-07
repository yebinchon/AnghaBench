
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; int left; } ;
struct TYPE_5__ {int face_bmp; TYPE_1__ face_rect; int hFacesBMP; } ;
typedef int HGDIOBJ ;
typedef int HDC ;
typedef TYPE_2__ BOARD ;


 int BitBlt (int ,int ,int ,int ,int,int ,int ,int,int ) ;
 int FACE_HEIGHT ;
 int FACE_WIDTH ;
 int SRCCOPY ;
 int SelectObject (int ,int ) ;

__attribute__((used)) static void DrawFace( HDC hdc, HDC hMemDC, BOARD *p_board )
{
    HGDIOBJ hOldObj;

    hOldObj = SelectObject (hMemDC, p_board->hFacesBMP);

    BitBlt( hdc,
        p_board->face_rect.left,
        p_board->face_rect.top,
        FACE_WIDTH,
        FACE_HEIGHT,
        hMemDC, 0, p_board->face_bmp * FACE_HEIGHT, SRCCOPY);

    SelectObject( hMemDC, hOldObj );
}
