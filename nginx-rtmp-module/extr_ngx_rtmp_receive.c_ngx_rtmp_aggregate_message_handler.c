
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
typedef int u_char ;
struct TYPE_15__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_16__ {size_t mlen; size_t msid; size_t timestamp; scalar_t__ type; } ;
typedef TYPE_3__ ngx_rtmp_header_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_17__ {struct TYPE_17__* next; TYPE_5__* buf; } ;
typedef TYPE_4__ ngx_chain_t ;
struct TYPE_18__ {int * last; int * pos; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_14__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 int ngx_log_debug6 (int ,int ,int ,char*,int ,scalar_t__,size_t,size_t,size_t,size_t) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ ngx_rtmp_fetch_uint32 (TYPE_4__**,size_t*,int) ;
 scalar_t__ ngx_rtmp_fetch_uint8 (TYPE_4__**,scalar_t__*) ;
 int ngx_rtmp_message_type (scalar_t__) ;
 scalar_t__ ngx_rtmp_receive_message (TYPE_2__*,TYPE_3__*,TYPE_4__*) ;

ngx_int_t
ngx_rtmp_aggregate_message_handler(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
                                   ngx_chain_t *in)
{
    uint32_t base_time, timestamp, prev_size;
    size_t len;
    ngx_int_t first;
    u_char *last;
    ngx_int_t rc;
    ngx_buf_t *b;
    ngx_chain_t *cl, *next;
    ngx_rtmp_header_t ch;

    ch = *h;

    first = 1;
    base_time = 0;

    while (in) {
        if (ngx_rtmp_fetch_uint8(&in, &ch.type) != NGX_OK) {
            return NGX_OK;
        }

        if (ngx_rtmp_fetch_uint32(&in, &ch.mlen, 3) != NGX_OK) {
            return NGX_ERROR;
        }

        if (ngx_rtmp_fetch_uint32(&in, &timestamp, 3) != NGX_OK) {
            return NGX_ERROR;
        }

        if (ngx_rtmp_fetch_uint8(&in, (uint8_t *) &timestamp + 3) != NGX_OK)
        {
            return NGX_ERROR;
        }

        if (ngx_rtmp_fetch_uint32(&in, &ch.msid, 3) != NGX_OK)
        {
            return NGX_ERROR;
        }

        if (first) {
            base_time = timestamp;
            first = 0;
        }

        ngx_log_debug6(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "RTMP aggregate %s (%d) len=%uD time=%uD (+%D) msid=%uD",
                       ngx_rtmp_message_type(ch.type),
                       (ngx_int_t) ch.type, ch.mlen, ch.timestamp,
                       timestamp - base_time, ch.msid);



        len = 0;
        cl = in;
        while (cl) {
            b = cl->buf;
            len += (b->last - b->pos);
            if (len > ch.mlen) {
                break;
            }
            cl = cl->next;
        }

        if (cl == ((void*)0)) {
            ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                          "RTMP error parsing aggregate");
            return NGX_ERROR;
        }

        next = cl->next;
        cl->next = ((void*)0);
        b = cl->buf;
        last = b->last;
        b->last -= (len - ch.mlen);



        ch.timestamp = h->timestamp + timestamp - base_time;

        rc = ngx_rtmp_receive_message(s, &ch, in);



        in = cl;
        in->next = next;
        b->pos = b->last;
        b->last = last;

        if (rc != NGX_OK) {
            return rc;
        }



        if (ngx_rtmp_fetch_uint32(&in, &prev_size, 4) != NGX_OK) {
            return NGX_OK;
        }

        ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "RTMP aggregate prev_size=%uD", prev_size);
    }

    return NGX_OK;
}
