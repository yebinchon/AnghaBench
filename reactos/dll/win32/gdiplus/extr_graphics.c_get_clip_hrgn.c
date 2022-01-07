
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ gdi_clip; int clip; } ;
typedef scalar_t__ HRGN ;
typedef scalar_t__ GpStatus ;
typedef int GpRegion ;
typedef int GpMatrix ;
typedef TYPE_1__ GpGraphics ;
typedef int BOOL ;


 int CombineRgn (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int CoordinateSpaceDevice ;
 scalar_t__ CreateRectRgn (int ,int ,int ,int ) ;
 scalar_t__ GdipCloneRegion (int ,int **) ;
 int GdipDeleteRegion (int *) ;
 scalar_t__ GdipGetRegionHRgn (int *,int *,scalar_t__*) ;
 scalar_t__ GdipIsMatrixIdentity (int *,int *) ;
 scalar_t__ GdipTransformRegion (int *,int *) ;
 scalar_t__ Ok ;
 int RGN_AND ;
 int RGN_COPY ;
 int WineCoordinateSpaceGdiDevice ;
 scalar_t__ get_graphics_transform (TYPE_1__*,int ,int ,int *) ;

__attribute__((used)) static GpStatus get_clip_hrgn(GpGraphics *graphics, HRGN *hrgn)
{
    GpRegion *rgn;
    GpMatrix transform;
    GpStatus stat;
    BOOL identity;

    stat = get_graphics_transform(graphics, WineCoordinateSpaceGdiDevice, CoordinateSpaceDevice, &transform);

    if (stat == Ok)
        stat = GdipIsMatrixIdentity(&transform, &identity);

    if (stat == Ok)
        stat = GdipCloneRegion(graphics->clip, &rgn);

    if (stat == Ok)
    {
        if (!identity)
            stat = GdipTransformRegion(rgn, &transform);

        if (stat == Ok)
            stat = GdipGetRegionHRgn(rgn, ((void*)0), hrgn);

        GdipDeleteRegion(rgn);
    }

    if (stat == Ok && graphics->gdi_clip)
    {
        if (*hrgn)
            CombineRgn(*hrgn, *hrgn, graphics->gdi_clip, RGN_AND);
        else
        {
            *hrgn = CreateRectRgn(0,0,0,0);
            CombineRgn(*hrgn, graphics->gdi_clip, graphics->gdi_clip, RGN_COPY);
        }
    }

    return stat;
}
