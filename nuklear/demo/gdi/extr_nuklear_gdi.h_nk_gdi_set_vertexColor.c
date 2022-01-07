
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nk_color {int r; int g; int b; } ;
struct TYPE_3__ {int Red; int Green; int Blue; int Alpha; } ;
typedef TYPE_1__* PTRIVERTEX ;



__attribute__((used)) static void
nk_gdi_set_vertexColor(PTRIVERTEX tri, struct nk_color col)
{
    tri->Red = col.r << 8;
    tri->Green = col.g << 8;
    tri->Blue = col.b << 8;
    tri->Alpha = 0xff << 8;
}
