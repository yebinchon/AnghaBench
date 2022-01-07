
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct iovec {size_t iov_len; scalar_t__ iov_base; } ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;
typedef int ngx_pool_t ;
struct TYPE_10__ {int nalloc; int count; struct iovec* iovs; } ;
typedef TYPE_2__ ngx_iovec_t ;
typedef int ngx_file_t ;
struct TYPE_11__ {TYPE_1__* buf; int * next; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_9__ {int * pos; int * last; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_IOVS_PREALLOCATE ;
 TYPE_3__* ngx_chain_to_iovec (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ ngx_write_file (int *,int *,size_t,int ) ;
 scalar_t__ ngx_writev_file (int *,TYPE_2__*,int ) ;

ssize_t
ngx_write_chain_to_file(ngx_file_t *file, ngx_chain_t *cl, off_t offset,
    ngx_pool_t *pool)
{
    ssize_t total, n;
    ngx_iovec_t vec;
    struct iovec iovs[NGX_IOVS_PREALLOCATE];



    if (cl->next == ((void*)0)) {
        return ngx_write_file(file, cl->buf->pos,
                              (size_t) (cl->buf->last - cl->buf->pos),
                              offset);
    }

    total = 0;

    vec.iovs = iovs;
    vec.nalloc = NGX_IOVS_PREALLOCATE;

    do {

        cl = ngx_chain_to_iovec(&vec, cl);



        if (vec.count == 1) {
            n = ngx_write_file(file, (u_char *) iovs[0].iov_base,
                               iovs[0].iov_len, offset);

            if (n == NGX_ERROR) {
                return n;
            }

            return total + n;
        }

        n = ngx_writev_file(file, &vec, offset);

        if (n == NGX_ERROR) {
            return n;
        }

        offset += n;
        total += n;

    } while (cl);

    return total;
}
