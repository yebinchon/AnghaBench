
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buf; struct TYPE_5__* next; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_4__ {scalar_t__ pos; scalar_t__ last; } ;



__attribute__((used)) static size_t
ngx_rtmp_record_get_chain_mlen(ngx_chain_t *in)
{
    size_t ret;

    for (ret = 0; in; in = in->next) {
        ret += (in->buf->last - in->buf->pos);
    }

    return ret;
}
