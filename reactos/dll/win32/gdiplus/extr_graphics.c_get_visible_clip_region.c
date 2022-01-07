
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ image_type; int * clip; scalar_t__ image; } ;
typedef int GpStatus ;
typedef int GpRegion ;
typedef int GpRectF ;
typedef TYPE_1__ GpGraphics ;


 int CombineModeIntersect ;
 int CombineModeReplace ;
 int GdipCombineRegionRect (int *,int *,int ) ;
 int GdipCombineRegionRegion (int *,int *,int ) ;
 int GdipCreateRegion (int **) ;
 int GdipDeleteRegion (int *) ;
 scalar_t__ ImageTypeMetafile ;
 int Ok ;
 int get_graphics_bounds (TYPE_1__*,int *) ;

__attribute__((used)) static GpStatus get_visible_clip_region(GpGraphics *graphics, GpRegion *rgn)
{
    GpStatus stat;
    GpRectF rectf;
    GpRegion* tmp;


    if (graphics->image && graphics->image_type == ImageTypeMetafile)
        return GdipCombineRegionRegion(rgn, graphics->clip, CombineModeReplace);

    if((stat = get_graphics_bounds(graphics, &rectf)) != Ok)
        return stat;

    if((stat = GdipCreateRegion(&tmp)) != Ok)
        return stat;

    if((stat = GdipCombineRegionRect(tmp, &rectf, CombineModeReplace)) != Ok)
        goto end;

    if((stat = GdipCombineRegionRegion(tmp, graphics->clip, CombineModeIntersect)) != Ok)
        goto end;

    stat = GdipCombineRegionRegion(rgn, tmp, CombineModeReplace);

end:
    GdipDeleteRegion(tmp);
    return stat;
}
