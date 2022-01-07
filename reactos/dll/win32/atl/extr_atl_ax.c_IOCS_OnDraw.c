
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int right; int bottom; int top; int left; } ;
struct TYPE_9__ {int hWnd; TYPE_1__ size; int control; int fWindowless; } ;
struct TYPE_8__ {int right; int bottom; int top; int left; } ;
typedef TYPE_2__ RECTL ;
typedef int IViewObject ;
typedef TYPE_3__ IOCS ;
typedef int HDC ;


 int DVASPECT_CONTENT ;
 int GetDC (int ) ;
 int IID_IViewObject ;
 int IOleObject_QueryInterface (int ,int *,void**) ;
 int IViewObject_Draw (int *,int ,int ,int *,int *,int ,int ,TYPE_2__*,TYPE_2__*,int *,int ) ;
 int IViewObject_Release (int *) ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static void IOCS_OnDraw( IOCS *This )
{
    IViewObject *view;

    if ( !This->control || !This->fWindowless )
        return;

    if ( SUCCEEDED( IOleObject_QueryInterface( This->control, &IID_IViewObject, (void**)&view ) ) )
    {
        HDC dc = GetDC( This->hWnd );
        RECTL rect;

        rect.left = This->size.left; rect.top = This->size.top;
        rect.bottom = This->size.bottom; rect.right = This->size.right;

        IViewObject_Draw( view, DVASPECT_CONTENT, ~0, ((void*)0), ((void*)0), 0, dc, &rect, &rect, ((void*)0), 0 );
        IViewObject_Release( view );
        ReleaseDC( This->hWnd, dc );
    }
}
