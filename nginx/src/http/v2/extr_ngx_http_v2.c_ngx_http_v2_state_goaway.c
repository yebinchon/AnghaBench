
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_10__ {int length; } ;
struct TYPE_11__ {TYPE_1__* connection; TYPE_2__ state; } ;
typedef TYPE_3__ ngx_http_v2_connection_t ;
struct TYPE_9__ {int log; } ;


 int NGX_HTTP_V2_GOAWAY_SIZE ;
 int NGX_HTTP_V2_SIZE_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int * ngx_http_v2_connection_error (TYPE_3__*,int ) ;
 int ngx_http_v2_parse_sid (int *) ;
 int ngx_http_v2_parse_uint32 (int *) ;
 int * ngx_http_v2_state_save (TYPE_3__*,int *,int *,int * (*) (TYPE_3__*,int *,int *)) ;
 int * ngx_http_v2_state_skip (TYPE_3__*,int *,int *) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_goaway(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{




    if (h2c->state.length < NGX_HTTP_V2_GOAWAY_SIZE) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "client sent GOAWAY frame "
                      "with incorrect length %uz", h2c->state.length);

        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_SIZE_ERROR);
    }

    if (end - pos < NGX_HTTP_V2_GOAWAY_SIZE) {
        return ngx_http_v2_state_save(h2c, pos, end, ngx_http_v2_state_goaway);
    }
    return ngx_http_v2_state_skip(h2c, pos, end);
}
