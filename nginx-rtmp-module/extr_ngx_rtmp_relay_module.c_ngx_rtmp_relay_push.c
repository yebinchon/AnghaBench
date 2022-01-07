
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_10__ {int url; } ;
struct TYPE_12__ {TYPE_2__ url; int play_path; int app; } ;
typedef TYPE_4__ ngx_rtmp_relay_target_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int log; } ;


 int NGX_LOG_INFO ;
 int ngx_log_error (int ,int ,int ,char*,int *,int *,int *,int *) ;
 int ngx_rtmp_relay_create (TYPE_3__*,int *,TYPE_4__*,int ,int ) ;
 int ngx_rtmp_relay_create_local_ctx ;
 int ngx_rtmp_relay_create_remote_ctx ;

ngx_int_t
ngx_rtmp_relay_push(ngx_rtmp_session_t *s, ngx_str_t *name,
        ngx_rtmp_relay_target_t *target)
{
    ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
            "relay: create push name='%V' app='%V' playpath='%V' url='%V'",
            name, &target->app, &target->play_path, &target->url.url);

    return ngx_rtmp_relay_create(s, name, target,
            ngx_rtmp_relay_create_local_ctx,
            ngx_rtmp_relay_create_remote_ctx);
}
