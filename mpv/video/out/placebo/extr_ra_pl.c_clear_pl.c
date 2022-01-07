
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_tex {int priv; } ;
struct ra {int dummy; } ;
struct mp_rect {int dummy; } ;


 int get_gpu (struct ra*) ;
 int pl_tex_clear (int ,int ,float*) ;

__attribute__((used)) static void clear_pl(struct ra *ra, struct ra_tex *dst, float color[4],
                     struct mp_rect *scissor)
{

    pl_tex_clear(get_gpu(ra), dst->priv, color);
}
