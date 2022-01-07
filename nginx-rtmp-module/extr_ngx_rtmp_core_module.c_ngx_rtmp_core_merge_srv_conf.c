
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int max_message; int out_queue; int out_cork; int * pool; int busy; int buflen; int publish_time_fix; int play_time_fix; int ack_window; int chunk_size; int max_streams; int so_keepalive; int ping_timeout; int ping; int timeout; } ;
typedef TYPE_2__ ngx_rtmp_core_srv_conf_t ;
struct TYPE_7__ {TYPE_1__* cycle; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_5__ {int new_log; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_size_value (int,int,int) ;
 int ngx_conf_merge_uint_value (int ,int ,int) ;
 int ngx_conf_merge_value (int ,int ,int) ;
 int * ngx_create_pool (int,int *) ;

__attribute__((used)) static char *
ngx_rtmp_core_merge_srv_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_core_srv_conf_t *prev = parent;
    ngx_rtmp_core_srv_conf_t *conf = child;

    ngx_conf_merge_msec_value(conf->timeout, prev->timeout, 60000);
    ngx_conf_merge_msec_value(conf->ping, prev->ping, 60000);
    ngx_conf_merge_msec_value(conf->ping_timeout, prev->ping_timeout, 30000);

    ngx_conf_merge_value(conf->so_keepalive, prev->so_keepalive, 0);
    ngx_conf_merge_value(conf->max_streams, prev->max_streams, 32);
    ngx_conf_merge_value(conf->chunk_size, prev->chunk_size, 4096);
    ngx_conf_merge_uint_value(conf->ack_window, prev->ack_window, 5000000);
    ngx_conf_merge_size_value(conf->max_message, prev->max_message,
            1 * 1024 * 1024);
    ngx_conf_merge_size_value(conf->out_queue, prev->out_queue, 256);
    ngx_conf_merge_size_value(conf->out_cork, prev->out_cork,
            conf->out_queue / 8);
    ngx_conf_merge_value(conf->play_time_fix, prev->play_time_fix, 1);
    ngx_conf_merge_value(conf->publish_time_fix, prev->publish_time_fix, 1);
    ngx_conf_merge_msec_value(conf->buflen, prev->buflen, 1000);
    ngx_conf_merge_value(conf->busy, prev->busy, 0);

    if (prev->pool == ((void*)0)) {
        prev->pool = ngx_create_pool(4096, &cf->cycle->new_log);
        if (prev->pool == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    conf->pool = prev->pool;

    return NGX_CONF_OK;
}
