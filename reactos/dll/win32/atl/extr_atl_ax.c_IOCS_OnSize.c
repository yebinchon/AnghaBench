
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_13__ {int control; scalar_t__ fInPlace; TYPE_2__ size; } ;
struct TYPE_11__ {scalar_t__ cy; scalar_t__ cx; } ;
typedef TYPE_1__ SIZEL ;
typedef TYPE_2__* LPCRECT ;
typedef int IOleInPlaceObject ;
typedef TYPE_3__ IOCS ;


 int AtlPixelToHiMetric (TYPE_1__*,TYPE_1__*) ;
 int DVASPECT_CONTENT ;
 int IID_IOleInPlaceObject ;
 int IOleInPlaceObject_Release (int *) ;
 int IOleInPlaceObject_SetObjectRects (int *,TYPE_2__*,TYPE_2__*) ;
 int IOleObject_QueryInterface (int ,int *,void**) ;
 int IOleObject_SetExtent (int ,int ,TYPE_1__*) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static void IOCS_OnSize( IOCS* This, LPCRECT rect )
{
    SIZEL inPix, inHi;

    This->size = *rect;

    if ( !This->control )
        return;

    inPix.cx = rect->right - rect->left;
    inPix.cy = rect->bottom - rect->top;
    AtlPixelToHiMetric( &inPix, &inHi );
    IOleObject_SetExtent( This->control, DVASPECT_CONTENT, &inHi );

    if ( This->fInPlace )
    {
        IOleInPlaceObject *wl;

        if ( SUCCEEDED( IOleObject_QueryInterface( This->control, &IID_IOleInPlaceObject, (void**)&wl ) ) )
        {
            IOleInPlaceObject_SetObjectRects( wl, rect, rect );
            IOleInPlaceObject_Release( wl );
        }
    }
}
