
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Y; int X; } ;
struct TYPE_5__ {void* y; void* x; } ;
typedef TYPE_1__ POINT ;
typedef int INT ;
typedef TYPE_2__ GpPointF ;


 void* gdip_round (int ) ;

__attribute__((used)) static void round_points(POINT *pti, GpPointF *ptf, INT count)
{
    int i;

    for(i = 0; i < count; i++){
        pti[i].x = gdip_round(ptf[i].X);
        pti[i].y = gdip_round(ptf[i].Y);
    }
}
