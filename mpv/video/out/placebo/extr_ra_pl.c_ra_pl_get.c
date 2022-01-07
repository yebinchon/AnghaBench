
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra {int * fns; } ;
struct pl_gpu {int dummy; } ;


 struct pl_gpu const* get_gpu (struct ra const*) ;
 int ra_fns_pl ;

const struct pl_gpu *ra_pl_get(const struct ra *ra)
{
    return ra->fns == &ra_fns_pl ? get_gpu(ra) : ((void*)0);
}
