
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memory; } ;
typedef int INT ;


 int CombineModeReplace ;
 int GdipSetClipRectI (int ,int ,int ,int ,int ,int ) ;
 TYPE_1__ gdip ;

__attribute__((used)) static void
nk_gdip_scissor(float x, float y, float w, float h)
{
    GdipSetClipRectI(gdip.memory, (INT)x, (INT)y, (INT)(w + 1), (INT)(h + 1), CombineModeReplace);
}
