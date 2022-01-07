
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int log; } ;
struct TYPE_5__ {int error; TYPE_1__ file; int background; scalar_t__ updating; scalar_t__ updated; } ;
typedef TYPE_2__ ngx_http_cache_t ;


 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_file_cache_free (TYPE_2__*,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;

__attribute__((used)) static void
ngx_http_file_cache_cleanup(void *data)
{
    ngx_http_cache_t *c = data;

    if (c->updated) {
        return;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->file.log, 0,
                   "http file cache cleanup");

    if (c->updating && !c->background) {
        ngx_log_error(NGX_LOG_ALERT, c->file.log, 0,
                      "stalled cache updating, error:%ui", c->error);
    }

    ngx_http_file_cache_free(c, ((void*)0));
}
