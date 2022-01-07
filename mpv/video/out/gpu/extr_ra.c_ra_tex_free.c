
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_tex {int dummy; } ;
struct ra {TYPE_1__* fns; } ;
struct TYPE_2__ {int (* tex_destroy ) (struct ra*,struct ra_tex*) ;} ;


 int stub1 (struct ra*,struct ra_tex*) ;

void ra_tex_free(struct ra *ra, struct ra_tex **tex)
{
    if (*tex)
        ra->fns->tex_destroy(ra, *tex);
    *tex = ((void*)0);
}
