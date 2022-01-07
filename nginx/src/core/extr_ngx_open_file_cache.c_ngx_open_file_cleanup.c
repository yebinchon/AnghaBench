
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log; int cache; int min_uses; TYPE_2__* file; } ;
typedef TYPE_1__ ngx_open_file_cache_cleanup_t ;
struct TYPE_4__ {int count; } ;


 int ngx_close_cached_file (int ,TYPE_2__*,int ,int ) ;
 int ngx_expire_old_cached_files (int ,int,int ) ;

__attribute__((used)) static void
ngx_open_file_cleanup(void *data)
{
    ngx_open_file_cache_cleanup_t *c = data;

    c->file->count--;

    ngx_close_cached_file(c->cache, c->file, c->min_uses, c->log);


    ngx_expire_old_cached_files(c->cache, 1, c->log);
}
