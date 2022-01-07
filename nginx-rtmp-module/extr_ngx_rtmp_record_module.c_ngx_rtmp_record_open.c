
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_str_t ;
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_record_rec_ctx_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int * ngx_rtmp_record_get_node_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_record_make_path (TYPE_2__*,int *,int *) ;
 scalar_t__ ngx_rtmp_record_node_open (TYPE_2__*,int *) ;

ngx_int_t
ngx_rtmp_record_open(ngx_rtmp_session_t *s, ngx_uint_t n, ngx_str_t *path)
{
    ngx_rtmp_record_rec_ctx_t *rctx;
    ngx_int_t rc;

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "record: #%ui manual open", n);

    rctx = ngx_rtmp_record_get_node_ctx(s, n);

    if (rctx == ((void*)0)) {
        return NGX_ERROR;
    }

    rc = ngx_rtmp_record_node_open(s, rctx);
    if (rc != NGX_OK) {
        return rc;
    }

    if (path) {
        ngx_rtmp_record_make_path(s, rctx, path);
    }

    return NGX_OK;
}
