
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bitmap; } ;
typedef int GpGraphics ;


 int GdipDrawImageI (int *,int ,int ,int ) ;
 TYPE_1__ gdip ;

__attribute__((used)) static void
nk_gdip_blit(GpGraphics *graphics)
{
    GdipDrawImageI(graphics, gdip.bitmap, 0, 0);
}
