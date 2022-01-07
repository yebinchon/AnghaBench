
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_9__ {TYPE_1__* read; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_10__ {TYPE_4__* buf; struct TYPE_10__* next; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_11__ {int * last; int * end; } ;
typedef TYPE_4__ ngx_buf_t ;
struct TYPE_8__ {int ready; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ ngx_ssl_recv (TYPE_2__*,int *,scalar_t__) ;

ssize_t
ngx_ssl_recv_chain(ngx_connection_t *c, ngx_chain_t *cl, off_t limit)
{
    u_char *last;
    ssize_t n, bytes, size;
    ngx_buf_t *b;

    bytes = 0;

    b = cl->buf;
    last = b->last;

    for ( ;; ) {
        size = b->end - last;

        if (limit) {
            if (bytes >= limit) {
                return bytes;
            }

            if (bytes + size > limit) {
                size = (ssize_t) (limit - bytes);
            }
        }

        n = ngx_ssl_recv(c, last, size);

        if (n > 0) {
            last += n;
            bytes += n;

            if (!c->read->ready) {
                return bytes;
            }

            if (last == b->end) {
                cl = cl->next;

                if (cl == ((void*)0)) {
                    return bytes;
                }

                b = cl->buf;
                last = b->last;
            }

            continue;
        }

        if (bytes) {

            if (n == 0 || n == NGX_ERROR) {
                c->read->ready = 1;
            }

            return bytes;
        }

        return n;
    }
}
