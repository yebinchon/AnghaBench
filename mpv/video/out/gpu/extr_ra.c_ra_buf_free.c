
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_buf {int dummy; } ;
struct ra {TYPE_1__* fns; } ;
struct TYPE_2__ {int (* buf_destroy ) (struct ra*,struct ra_buf*) ;} ;


 int stub1 (struct ra*,struct ra_buf*) ;

void ra_buf_free(struct ra *ra, struct ra_buf **buf)
{
    if (*buf)
        ra->fns->buf_destroy(ra, *buf);
    *buf = ((void*)0);
}
