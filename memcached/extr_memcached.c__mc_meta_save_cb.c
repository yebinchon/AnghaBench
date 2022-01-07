
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {unsigned long long tv_sec; } ;
struct _mc_meta_data {unsigned long long slab_config; unsigned long long mmap_base; } ;
struct TYPE_4__ {unsigned long long chunk_size; unsigned long long item_size_max; unsigned long long slab_chunk_size_max; unsigned long long slab_page_size; unsigned long long oldest_live; scalar_t__ oldest_cas; scalar_t__ slab_reassign; scalar_t__ use_cas; scalar_t__ maxbytes; } ;
struct TYPE_3__ {unsigned long long hash_power_level; } ;


 unsigned long long current_time ;
 scalar_t__ get_cas_id () ;
 int gettimeofday (struct timeval*,int *) ;
 unsigned long long logger_get_gid () ;
 scalar_t__ process_started ;
 int restart_set_kv (void*,char*,char*,...) ;
 TYPE_2__ settings ;
 TYPE_1__ stats_state ;

__attribute__((used)) static int _mc_meta_save_cb(const char *tag, void *ctx, void *data) {
    struct _mc_meta_data *meta = (struct _mc_meta_data *)data;
    restart_set_kv(ctx, "slab_config", "%s", meta->slab_config);
    restart_set_kv(ctx, "maxbytes", "%llu", (unsigned long long) settings.maxbytes);
    restart_set_kv(ctx, "chunk_size", "%d", settings.chunk_size);
    restart_set_kv(ctx, "item_size_max", "%d", settings.item_size_max);
    restart_set_kv(ctx, "slab_chunk_size_max", "%d", settings.slab_chunk_size_max);
    restart_set_kv(ctx, "slab_page_size", "%d", settings.slab_page_size);
    restart_set_kv(ctx, "use_cas", "%s", settings.use_cas ? "true" : "false");
    restart_set_kv(ctx, "slab_reassign", "%s", settings.slab_reassign ? "true" : "false");
    restart_set_kv(ctx, "current_time", "%u", current_time);


    restart_set_kv(ctx, "process_started", "%llu", (unsigned long long) process_started);
    {
        struct timeval tv;
        gettimeofday(&tv, ((void*)0));
        restart_set_kv(ctx, "stop_time", "%lu", tv.tv_sec);
    }



    restart_set_kv(ctx, "current_cas", "%llu", (unsigned long long) get_cas_id());
    restart_set_kv(ctx, "oldest_cas", "%llu", (unsigned long long) settings.oldest_cas);
    restart_set_kv(ctx, "logger_gid", "%llu", logger_get_gid());
    restart_set_kv(ctx, "hashpower", "%u", stats_state.hash_power_level);



    restart_set_kv(ctx, "oldest_live", "%u", settings.oldest_live);

    restart_set_kv(ctx, "mmap_oldbase", "%p", meta->mmap_base);

    return 0;
}
