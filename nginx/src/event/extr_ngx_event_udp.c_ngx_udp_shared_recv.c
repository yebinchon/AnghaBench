
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
struct TYPE_8__ {TYPE_1__* read; TYPE_2__* udp; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_9__ {scalar_t__ pos; scalar_t__ last; } ;
typedef TYPE_4__ ngx_buf_t ;
struct TYPE_7__ {TYPE_4__* buffer; } ;
struct TYPE_6__ {int active; scalar_t__ ready; } ;


 int NGX_AGAIN ;
 int ngx_memcpy (int *,scalar_t__,int ) ;
 int ngx_min (scalar_t__,int ) ;

__attribute__((used)) static ssize_t
ngx_udp_shared_recv(ngx_connection_t *c, u_char *buf, size_t size)
{
    ssize_t n;
    ngx_buf_t *b;

    if (c->udp == ((void*)0) || c->udp->buffer == ((void*)0)) {
        return NGX_AGAIN;
    }

    b = c->udp->buffer;

    n = ngx_min(b->last - b->pos, (ssize_t) size);

    ngx_memcpy(buf, b->pos, n);

    c->udp->buffer = ((void*)0);

    c->read->ready = 0;
    c->read->active = 1;

    return n;
}
