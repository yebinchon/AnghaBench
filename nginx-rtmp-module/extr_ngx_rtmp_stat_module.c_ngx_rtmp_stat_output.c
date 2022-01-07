
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_9__ {int pool; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_10__ {TYPE_3__* buf; struct TYPE_10__* next; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_11__ {scalar_t__ last; scalar_t__ end; int * pos; } ;
typedef TYPE_3__ ngx_buf_t ;


 int NGX_RTMP_STAT_BUFSIZE ;
 TYPE_2__* ngx_alloc_chain_link (int ) ;
 int * ngx_cpymem (int *,void*,size_t) ;
 TYPE_3__* ngx_create_temp_buf (int ,int ) ;
 size_t ngx_escape_html (int *,void*,size_t) ;
 int ngx_max (int ,size_t) ;
 void* ngx_rtmp_stat_escape (TYPE_1__*,void*,size_t) ;

__attribute__((used)) static void
ngx_rtmp_stat_output(ngx_http_request_t *r, ngx_chain_t ***lll,
        void *data, size_t len, ngx_uint_t escape)
{
    ngx_chain_t *cl;
    ngx_buf_t *b;
    size_t real_len;

    if (len == 0) {
        return;
    }

    if (escape) {
        data = ngx_rtmp_stat_escape(r, data, len);
        if (data == ((void*)0)) {
            return;
        }
    }

    real_len = escape
        ? len + ngx_escape_html(((void*)0), data, len)
        : len;

    cl = **lll;
    if (cl && cl->buf->last + real_len > cl->buf->end) {
        *lll = &cl->next;
    }

    if (**lll == ((void*)0)) {
        cl = ngx_alloc_chain_link(r->pool);
        if (cl == ((void*)0)) {
            return;
        }
        b = ngx_create_temp_buf(r->pool,
                ngx_max(NGX_RTMP_STAT_BUFSIZE, real_len));
        if (b == ((void*)0) || b->pos == ((void*)0)) {
            return;
        }
        cl->next = ((void*)0);
        cl->buf = b;
        **lll = cl;
    }

    b = (**lll)->buf;

    if (escape) {
        b->last = (u_char *)ngx_escape_html(b->last, data, len);
    } else {
        b->last = ngx_cpymem(b->last, data, len);
    }
}
