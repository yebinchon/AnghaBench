
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {TYPE_1__* vo; int screen_osd_res; int dst_rect; int src_rect; } ;
struct TYPE_2__ {int want_redraw; } ;


 int vo_get_src_dst_rects (TYPE_1__*,int *,int *,int *) ;

__attribute__((used)) static void resize(struct priv *p)
{
    vo_get_src_dst_rects(p->vo, &p->src_rect, &p->dst_rect, &p->screen_osd_res);




    p->vo->want_redraw = 1;
}
