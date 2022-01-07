
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {char* action; } ;
typedef TYPE_1__ ngx_log_t ;
struct TYPE_8__ {TYPE_3__* connection; } ;
typedef TYPE_2__ ngx_http_v2_connection_t ;
struct TYPE_9__ {TYPE_1__* log; } ;


 int NGX_HTTP_V2_PROTOCOL_ERROR ;
 int * ngx_http_v2_connection_error (TYPE_2__*,int ) ;
 int * ngx_http_v2_state_preface (TYPE_2__*,int *,int *) ;
 int * ngx_proxy_protocol_read (TYPE_3__*,int *,int *) ;

__attribute__((used)) static u_char *
ngx_http_v2_state_proxy_protocol(ngx_http_v2_connection_t *h2c, u_char *pos,
    u_char *end)
{
    ngx_log_t *log;

    log = h2c->connection->log;
    log->action = "reading PROXY protocol";

    pos = ngx_proxy_protocol_read(h2c->connection, pos, end);

    log->action = "processing HTTP/2 connection";

    if (pos == ((void*)0)) {
        return ngx_http_v2_connection_error(h2c, NGX_HTTP_V2_PROTOCOL_ERROR);
    }

    return ngx_http_v2_state_preface(h2c, pos, end);
}
