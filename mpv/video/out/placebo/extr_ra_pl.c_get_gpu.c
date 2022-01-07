
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_pl {struct pl_gpu const* gpu; } ;
struct ra {struct ra_pl* priv; } ;
struct pl_gpu {int dummy; } ;



__attribute__((used)) static inline const struct pl_gpu *get_gpu(const struct ra *ra)
{
    struct ra_pl *p = ra->priv;
    return p->gpu;
}
