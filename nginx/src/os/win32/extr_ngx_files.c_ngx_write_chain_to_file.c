
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;
typedef int ngx_pool_t ;
typedef int ngx_file_t ;
struct TYPE_5__ {struct TYPE_5__* next; TYPE_1__* buf; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_4__ {int * last; int * pos; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ ngx_write_file (int *,int *,size_t,int ) ;

ssize_t
ngx_write_chain_to_file(ngx_file_t *file, ngx_chain_t *cl, off_t offset,
    ngx_pool_t *pool)
{
    u_char *buf, *prev;
    size_t size;
    ssize_t total, n;

    total = 0;

    while (cl) {
        buf = cl->buf->pos;
        prev = buf;
        size = 0;



        while (cl && prev == cl->buf->pos) {
            size += cl->buf->last - cl->buf->pos;
            prev = cl->buf->last;
            cl = cl->next;
        }

        n = ngx_write_file(file, buf, size, offset);

        if (n == NGX_ERROR) {
            return NGX_ERROR;
        }

        total += n;
        offset += n;
    }

    return total;
}
