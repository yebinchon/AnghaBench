
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_12__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_13__ {int epoch; int name; struct TYPE_13__* next; } ;
typedef TYPE_3__ ngx_rtmp_live_stream_t ;
struct TYPE_14__ {size_t nbuckets; int pool; TYPE_3__* free_streams; TYPE_3__** streams; } ;
typedef TYPE_4__ ngx_rtmp_live_app_conf_t ;
struct TYPE_11__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int ngx_current_msec ;
 size_t ngx_hash_key (int *,size_t) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;
 int ngx_memcpy (int ,int *,int ) ;
 int ngx_memzero (TYPE_3__*,int) ;
 int ngx_min (int,size_t) ;
 TYPE_3__* ngx_palloc (int ,int) ;
 TYPE_4__* ngx_rtmp_get_module_app_conf (TYPE_2__*,int ) ;
 int ngx_rtmp_live_module ;
 scalar_t__ ngx_strcmp (int *,int ) ;
 size_t ngx_strlen (int *) ;

__attribute__((used)) static ngx_rtmp_live_stream_t **
ngx_rtmp_live_get_stream(ngx_rtmp_session_t *s, u_char *name, int create)
{
    ngx_rtmp_live_app_conf_t *lacf;
    ngx_rtmp_live_stream_t **stream;
    size_t len;

    lacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_live_module);
    if (lacf == ((void*)0)) {
        return ((void*)0);
    }

    len = ngx_strlen(name);
    stream = &lacf->streams[ngx_hash_key(name, len) % lacf->nbuckets];

    for (; *stream; stream = &(*stream)->next) {
        if (ngx_strcmp(name, (*stream)->name) == 0) {
            return stream;
        }
    }

    if (!create) {
        return ((void*)0);
    }

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "live: create stream '%s'", name);

    if (lacf->free_streams) {
        *stream = lacf->free_streams;
        lacf->free_streams = lacf->free_streams->next;
    } else {
        *stream = ngx_palloc(lacf->pool, sizeof(ngx_rtmp_live_stream_t));
    }
    ngx_memzero(*stream, sizeof(ngx_rtmp_live_stream_t));
    ngx_memcpy((*stream)->name, name,
            ngx_min(sizeof((*stream)->name) - 1, len));
    (*stream)->epoch = ngx_current_msec;

    return stream;
}
