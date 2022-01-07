
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_24__ {int dwSize; scalar_t__ dwFillColor; } ;
struct TYPE_23__ {TYPE_1__* lpVtbl; } ;
struct TYPE_22__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_21__ {scalar_t__ (* GetDC ) (TYPE_3__*,int *) ;int (* Blt ) (TYPE_3__*,TYPE_2__*,TYPE_3__*,int *,int,TYPE_4__*) ;int (* Flip ) (TYPE_3__*,int *,int ) ;int (* ReleaseDC ) (TYPE_3__*,int ) ;} ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* LPDIRECTDRAWSURFACE ;
typedef scalar_t__ INT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int DDBlitFx ;
typedef TYPE_4__ DDBLTFX ;
typedef scalar_t__ BOOL ;


 int CreateSolidBrush (int ) ;
 int DDBLT_COLORFILL ;
 int DDBLT_WAIT ;
 int DDFLIP_WAIT ;
 scalar_t__ DD_OK ;
 scalar_t__ DD_SQUARE_SIZE ;
 scalar_t__ DD_TEST_HEIGHT ;
 scalar_t__ DD_TEST_WIDTH ;
 int FillRect (int ,TYPE_2__*,int ) ;
 int RGB (int,int,int) ;
 int ZeroMemory (TYPE_4__*,int) ;
 int stub1 (TYPE_3__*,TYPE_2__*,TYPE_3__*,int *,int,TYPE_4__*) ;
 scalar_t__ stub2 (TYPE_3__*,int *) ;
 int stub3 (TYPE_3__*,int ) ;
 int stub4 (TYPE_3__*,int *,int ) ;
 int stub5 (TYPE_3__*,TYPE_2__*,TYPE_3__*,int *,int,TYPE_4__*) ;

VOID DDUpdateFrame(LPDIRECTDRAWSURFACE lpDDPrimarySurface ,LPDIRECTDRAWSURFACE lpDDBackBuffer, BOOL Fullscreen, INT *posX, INT *posY, INT *gainX, INT *gainY, RECT *rectDD)
{
    HDC hdc;
    DDBLTFX DDBlitFx;


    ZeroMemory(&DDBlitFx, sizeof(DDBlitFx));
    DDBlitFx.dwSize = sizeof(DDBlitFx);
    DDBlitFx.dwFillColor = 0;

    lpDDBackBuffer->lpVtbl->Blt(lpDDBackBuffer, ((void*)0), ((void*)0), ((void*)0), DDBLT_COLORFILL | DDBLT_WAIT, &DDBlitFx);

    if (lpDDBackBuffer->lpVtbl->GetDC(lpDDBackBuffer, &hdc) == DD_OK)
    {
        RECT rct;
        HBRUSH WhiteBrush;

        rct.left = *posX;
        rct.right = *posX+DD_SQUARE_SIZE;
        rct.top = *posY;
        rct.bottom = *posY+DD_SQUARE_SIZE;

        WhiteBrush = CreateSolidBrush(RGB(255,255,255));
        FillRect(hdc, &rct, WhiteBrush);

        if(*posX >= (DD_TEST_WIDTH - DD_SQUARE_SIZE)) *gainX = -(*gainX);
        if(*posY >= (DD_TEST_HEIGHT - DD_SQUARE_SIZE)) *gainY = -(*gainY);
        if(*posX < 0) *gainX = -1*(*gainX);
        if(*posY < 0) *gainY = -1*(*gainY);

        *posX += *gainX;
        *posY += *gainY;

        lpDDBackBuffer->lpVtbl->ReleaseDC(lpDDBackBuffer, hdc);

        if(Fullscreen)
        {
            lpDDPrimarySurface->lpVtbl->Flip(lpDDPrimarySurface, ((void*)0), DDFLIP_WAIT);
        }
        else
        {
            lpDDPrimarySurface->lpVtbl->Blt(lpDDPrimarySurface, rectDD, lpDDBackBuffer, ((void*)0), DDBLT_WAIT, ((void*)0));
        }
    }
}
