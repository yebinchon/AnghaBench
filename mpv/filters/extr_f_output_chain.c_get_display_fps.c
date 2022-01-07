
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_stream_info {struct chain* priv; } ;
struct chain {scalar_t__ vo; } ;


 int VOCTRL_GET_DISPLAY_FPS ;
 int vo_control (scalar_t__,int ,double*) ;

__attribute__((used)) static double get_display_fps(struct mp_stream_info *i)
{
    struct chain *p = i->priv;
    double res = 0;
    if (p->vo)
        vo_control(p->vo, VOCTRL_GET_DISPLAY_FPS, &res);
    return res;
}
