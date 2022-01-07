
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demux_cache {scalar_t__ fd; int filename; TYPE_1__* opts; scalar_t__ need_unlink; } ;
struct TYPE_2__ {int unlink_files; } ;


 int MP_ERR (struct demux_cache*,char*) ;
 int close (scalar_t__) ;
 scalar_t__ unlink (int ) ;

__attribute__((used)) static void cache_destroy(void *p)
{
    struct demux_cache *cache = p;

    if (cache->fd >= 0)
        close(cache->fd);

    if (cache->need_unlink && cache->opts->unlink_files >= 1) {
        if (unlink(cache->filename))
            MP_ERR(cache, "Failed to delete cache temporary file.\n");
    }
}
