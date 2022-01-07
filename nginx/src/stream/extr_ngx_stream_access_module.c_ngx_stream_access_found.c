
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_5__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_stream_session_t ;
typedef int ngx_int_t ;
struct TYPE_4__ {int log; } ;


 int NGX_LOG_ERR ;
 int NGX_OK ;
 int NGX_STREAM_FORBIDDEN ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_stream_access_found(ngx_stream_session_t *s, ngx_uint_t deny)
{
    if (deny) {
        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                      "access forbidden by rule");
        return NGX_STREAM_FORBIDDEN;
    }

    return NGX_OK;
}
