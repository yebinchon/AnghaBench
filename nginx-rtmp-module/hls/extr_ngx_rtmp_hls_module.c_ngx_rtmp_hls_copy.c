
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {TYPE_2__* buf; struct TYPE_10__* next; } ;
typedef TYPE_4__ ngx_chain_t ;
struct TYPE_8__ {int * pos; int * last; } ;
struct TYPE_7__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_log_error (int ,int ,int ,char*,size_t) ;
 int ngx_memcpy (void*,int *,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_hls_copy(ngx_rtmp_session_t *s, void *dst, u_char **src, size_t n,
    ngx_chain_t **in)
{
    u_char *last;
    size_t pn;

    if (*in == ((void*)0)) {
        return NGX_ERROR;
    }

    for ( ;; ) {
        last = (*in)->buf->last;

        if ((size_t)(last - *src) >= n) {
            if (dst) {
                ngx_memcpy(dst, *src, n);
            }

            *src += n;

            while (*in && *src == (*in)->buf->last) {
                *in = (*in)->next;
                if (*in) {
                    *src = (*in)->buf->pos;
                }
            }

            return NGX_OK;
        }

        pn = last - *src;

        if (dst) {
            ngx_memcpy(dst, *src, pn);
            dst = (u_char *)dst + pn;
        }

        n -= pn;
        *in = (*in)->next;

        if (*in == ((void*)0)) {
            ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                          "hls: failed to read %uz byte(s)", n);
            return NGX_ERROR;
        }

        *src = (*in)->buf->pos;
    }
}
