
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_tex_params {int dummy; } ;
struct ra_tex {int dummy; } ;
struct ra {TYPE_1__* fns; } ;
struct TYPE_2__ {struct ra_tex* (* tex_create ) (struct ra*,struct ra_tex_params const*) ;} ;


 struct ra_tex* stub1 (struct ra*,struct ra_tex_params const*) ;

struct ra_tex *ra_tex_create(struct ra *ra, const struct ra_tex_params *params)
{
    return ra->fns->tex_create(ra, params);
}
