
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ files; int last; int loader_sleep; } ;
typedef TYPE_1__ ngx_http_file_cache_t ;


 int ngx_current_msec ;
 int ngx_msleep (int ) ;
 int ngx_time_update () ;

__attribute__((used)) static void
ngx_http_file_cache_loader_sleep(ngx_http_file_cache_t *cache)
{
    ngx_msleep(cache->loader_sleep);

    ngx_time_update();

    cache->last = ngx_current_msec;
    cache->files = 0;
}
