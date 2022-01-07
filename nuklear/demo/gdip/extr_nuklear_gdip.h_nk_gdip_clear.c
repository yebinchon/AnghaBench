
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nk_color {int dummy; } ;
struct TYPE_2__ {int memory; } ;


 int GdipGraphicsClear (int ,int ) ;
 int convert_color (struct nk_color) ;
 TYPE_1__ gdip ;

__attribute__((used)) static void
nk_gdip_clear(struct nk_color col)
{
    GdipGraphicsClear(gdip.memory, convert_color(col));
}
