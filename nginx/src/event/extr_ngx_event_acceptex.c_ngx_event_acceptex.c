
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ngx_socket_t ;
struct TYPE_18__ {scalar_t__ len; int * data; } ;
struct TYPE_14__ {int (* handler ) (TYPE_5__*) ;int addr_text_max_len; scalar_t__ addr_ntop; scalar_t__ post_accept_buffer_size; scalar_t__ socklen; int fd; TYPE_8__ addr_text; } ;
typedef TYPE_3__ ngx_listening_t ;
struct TYPE_12__ {int error; } ;
struct TYPE_15__ {scalar_t__ available; TYPE_1__ ovlp; TYPE_5__* data; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_16__ {int number; TYPE_8__ addr_text; int socklen; int sockaddr; int pool; TYPE_2__* buffer; int local_socklen; int local_sockaddr; TYPE_7__* log; int fd; TYPE_3__* listening; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_17__ {int handler; } ;
struct TYPE_13__ {scalar_t__ start; scalar_t__ end; int last; int pos; } ;


 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_EVENT ;
 int SOL_SOCKET ;
 int SO_UPDATE_ACCEPT_CONTEXT ;
 int ngx_accept_log_error ;
 int ngx_atomic_fetch_add (int ,int) ;
 int ngx_connection_counter ;
 int ngx_event_post_acceptex (TYPE_3__*,int) ;
 int ngx_getacceptexsockaddrs (int ,scalar_t__,scalar_t__,scalar_t__,int *,int *,int *,int *) ;
 int ngx_log_debug1 (int ,TYPE_7__*,int ,char*,int ) ;
 int ngx_log_error (int ,TYPE_7__*,int ,char*,TYPE_8__*) ;
 int * ngx_pnalloc (int ,int ) ;
 scalar_t__ ngx_sock_ntop (int ,int ,int *,int ,int ) ;
 int ngx_socket_errno ;
 int setsockopt (int ,int ,int ,char*,int) ;
 int stub1 (TYPE_5__*) ;

void
ngx_event_acceptex(ngx_event_t *rev)
{
    ngx_listening_t *ls;
    ngx_connection_t *c;

    c = rev->data;
    ls = c->listening;

    c->log->handler = ngx_accept_log_error;

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0, "AcceptEx: %d", c->fd);

    if (rev->ovlp.error) {
        ngx_log_error(NGX_LOG_CRIT, c->log, rev->ovlp.error,
                      "AcceptEx() %V failed", &ls->addr_text);
        return;
    }



    if (setsockopt(c->fd, SOL_SOCKET, SO_UPDATE_ACCEPT_CONTEXT,
                   (char *) &ls->fd, sizeof(ngx_socket_t))
        == -1)
    {
        ngx_log_error(NGX_LOG_CRIT, c->log, ngx_socket_errno,
                      "setsockopt(SO_UPDATE_ACCEPT_CONTEXT) failed for %V",
                      &c->addr_text);

        return;
    }

    ngx_getacceptexsockaddrs(c->buffer->pos,
                             ls->post_accept_buffer_size,
                             ls->socklen + 16,
                             ls->socklen + 16,
                             &c->local_sockaddr, &c->local_socklen,
                             &c->sockaddr, &c->socklen);

    if (ls->post_accept_buffer_size) {
        c->buffer->last += rev->available;
        c->buffer->end = c->buffer->start + ls->post_accept_buffer_size;

    } else {
        c->buffer = ((void*)0);
    }

    if (ls->addr_ntop) {
        c->addr_text.data = ngx_pnalloc(c->pool, ls->addr_text_max_len);
        if (c->addr_text.data == ((void*)0)) {

            return;
        }

        c->addr_text.len = ngx_sock_ntop(c->sockaddr, c->socklen,
                                         c->addr_text.data,
                                         ls->addr_text_max_len, 0);
        if (c->addr_text.len == 0) {

            return;
        }
    }

    ngx_event_post_acceptex(ls, 1);

    c->number = ngx_atomic_fetch_add(ngx_connection_counter, 1);

    ls->handler(c);

    return;

}
