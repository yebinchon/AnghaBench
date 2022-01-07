
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef int u_char ;
struct TYPE_29__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_30__ {scalar_t__ type; } ;
typedef TYPE_4__ ngx_rtmp_header_t ;
typedef int (* ngx_rtmp_handler_pt ) (TYPE_3__*,TYPE_4__*,TYPE_7__*) ;
struct TYPE_32__ {int amf_hash; } ;
typedef TYPE_8__ ngx_rtmp_core_main_conf_t ;
struct TYPE_33__ {int member_3; int type; int * member_2; int member_1; int member_0; } ;
typedef TYPE_9__ ngx_rtmp_amf_elt_t ;
struct TYPE_25__ {int offset; TYPE_7__* link; int log; } ;
typedef TYPE_10__ ngx_rtmp_amf_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_31__ {TYPE_1__* buf; } ;
typedef TYPE_7__ ngx_chain_t ;
struct TYPE_26__ {size_t nelts; int (* elts ) (TYPE_3__*,TYPE_4__*,TYPE_7__*) ;} ;
typedef TYPE_12__ ngx_array_t ;
typedef int func ;
typedef int elts ;
typedef int act ;
struct TYPE_28__ {int log; } ;
struct TYPE_27__ {scalar_t__* pos; scalar_t__* last; } ;




 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;

 int NGX_RTMP_AMF_TYPELESS ;
 scalar_t__ NGX_RTMP_MSG_AMF3_CMD ;
 scalar_t__ NGX_RTMP_MSG_AMF3_META ;
 scalar_t__ NGX_RTMP_MSG_AMF3_SHARED ;
 scalar_t__ NGX_RTMP_MSG_AMF_SHARED ;
 int memset (int * const,int ,int) ;
 TYPE_12__* ngx_hash_find (int *,int ,int * const,size_t) ;
 int ngx_hash_strlow (int * const,int * const,size_t) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int * const,size_t,size_t) ;
 int ngx_memzero (TYPE_10__*,int) ;

 scalar_t__ ngx_rtmp_amf_read (TYPE_10__*,TYPE_9__*,int) ;
 int ngx_rtmp_core_module ;
 TYPE_8__* ngx_rtmp_get_module_main_conf (TYPE_3__*,int ) ;
 size_t ngx_strlen (int * const) ;
 int stub1 (TYPE_3__*,TYPE_4__*,TYPE_7__*) ;

ngx_int_t
ngx_rtmp_amf_message_handler(ngx_rtmp_session_t *s,
        ngx_rtmp_header_t *h, ngx_chain_t *in)
{
    ngx_rtmp_amf_ctx_t act;
    ngx_rtmp_core_main_conf_t *cmcf;
    ngx_array_t *ch;
    ngx_rtmp_handler_pt *ph;
    size_t len, n;

    static u_char func[128];

    static ngx_rtmp_amf_elt_t elts[] = {

        { 129,
          128,
          func, sizeof(func) },
    };



    if (h->type == NGX_RTMP_MSG_AMF_SHARED ||
        h->type == NGX_RTMP_MSG_AMF3_SHARED)
    {
        elts[0].type |= NGX_RTMP_AMF_TYPELESS;
    } else {
        elts[0].type &= ~NGX_RTMP_AMF_TYPELESS;
    }

    if ((h->type == NGX_RTMP_MSG_AMF3_SHARED ||
         h->type == NGX_RTMP_MSG_AMF3_META ||
         h->type == NGX_RTMP_MSG_AMF3_CMD)
         && in->buf->last > in->buf->pos)
    {
        ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                "AMF3 prefix: %ui", (ngx_int_t)*in->buf->pos);
        ++in->buf->pos;
    }

    cmcf = ngx_rtmp_get_module_main_conf(s, ngx_rtmp_core_module);


    ngx_memzero(&act, sizeof(act));
    act.link = in;
    act.log = s->connection->log;
    memset(func, 0, sizeof(func));

    if (ngx_rtmp_amf_read(&act, elts,
                sizeof(elts) / sizeof(elts[0])) != NGX_OK)
    {
        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                "AMF cmd failed");
        return 130;
    }


    in = act.link;
    in->buf->pos += act.offset;

    len = ngx_strlen(func);

    ch = ngx_hash_find(&cmcf->amf_hash,
            ngx_hash_strlow(func, func, len), func, len);

    if (ch && ch->nelts) {
        ph = ch->elts;
        for (n = 0; n < ch->nelts; ++n, ++ph) {
            ngx_log_debug3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                "AMF func '%s' passed to handler %d/%d",
                func, n, ch->nelts);
            switch ((*ph)(s, h, in)) {
                case 130:
                    return 130;
                case 131:
                    return NGX_OK;
            }
        }
    } else {
        ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "AMF cmd '%s' no handler", func);
    }

    return NGX_OK;
}
