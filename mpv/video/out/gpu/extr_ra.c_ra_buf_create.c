
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_buf_params {int dummy; } ;
struct ra_buf {int dummy; } ;
struct ra {TYPE_1__* fns; } ;
struct TYPE_2__ {struct ra_buf* (* buf_create ) (struct ra*,struct ra_buf_params const*) ;} ;


 struct ra_buf* stub1 (struct ra*,struct ra_buf_params const*) ;

struct ra_buf *ra_buf_create(struct ra *ra, const struct ra_buf_params *params)
{
    return ra->fns->buf_create(ra, params);
}
