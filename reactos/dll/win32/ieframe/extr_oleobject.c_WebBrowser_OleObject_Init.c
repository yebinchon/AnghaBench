
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {void* cy; void* cx; } ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_15__ {TYPE_6__ extent; TYPE_5__ IOleCommandTarget_iface; TYPE_4__ IOleInPlaceActiveObject_iface; TYPE_3__ IOleControl_iface; TYPE_2__ IOleInPlaceObject_iface; TYPE_1__ IOleObject_iface; } ;
typedef TYPE_7__ WebBrowser ;
typedef int HDC ;
typedef int DWORD ;


 int GetDC (int ) ;
 int GetDeviceCaps (int ,int ) ;
 int LOGPIXELSX ;
 int LOGPIXELSY ;
 void* MulDiv (int,int,int ) ;
 int OleCommandTargetVtbl ;
 int OleControlVtbl ;
 int OleInPlaceActiveObjectVtbl ;
 int OleInPlaceObjectVtbl ;
 int OleObjectVtbl ;
 int ReleaseDC (int ,int ) ;

void WebBrowser_OleObject_Init(WebBrowser *This)
{
    DWORD dpi_x;
    DWORD dpi_y;
    HDC hdc;


    hdc = GetDC(0);
    dpi_x = GetDeviceCaps(hdc, LOGPIXELSX);
    dpi_y = GetDeviceCaps(hdc, LOGPIXELSY);
    ReleaseDC(0, hdc);

    This->IOleObject_iface.lpVtbl = &OleObjectVtbl;
    This->IOleInPlaceObject_iface.lpVtbl = &OleInPlaceObjectVtbl;
    This->IOleControl_iface.lpVtbl = &OleControlVtbl;
    This->IOleInPlaceActiveObject_iface.lpVtbl = &OleInPlaceActiveObjectVtbl;
    This->IOleCommandTarget_iface.lpVtbl = &OleCommandTargetVtbl;


    This->extent.cx = MulDiv( 50, 2540, dpi_x );
    This->extent.cy = MulDiv( 20, 2540, dpi_y );
}
