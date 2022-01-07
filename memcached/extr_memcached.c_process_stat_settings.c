
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* maxconns; char* port; char* udpport; char* inter; char* verbose; char* socketpath; char* access; char* factor; char* chunk_size; char* num_threads; char* num_threads_per_udp; char* prefix_delimiter; char* reqs_per_event; char* backlog; char* auth_file; char* item_size_max; char* hashpower_init; char* slab_automove; char* slab_automove_ratio; char* slab_automove_window; char* slab_chunk_size_max; char* lru_crawler_sleep; char* tail_repair_time; char* hash_algorithm; char* hot_lru_pct; char* warm_lru_pct; char* hot_max_factor; char* warm_max_factor; char* temporary_ttl; char* idle_timeout; char* logger_watcher_buf_size; char* logger_buf_size; char* ext_item_size; char* ext_item_age; char* ext_low_ttl; char* ext_recache_rate; char* ext_wbuf_size; char* ext_compact_under; char* ext_drop_under; char* ext_max_frag; char* slab_automove_freeratio; char* ssl_chain_cert; char* ssl_key; char* ssl_verify_mode; char* ssl_keyformat; char* ssl_ciphers; char* ssl_ca_cert; char* ssl_wbuf_size; scalar_t__ ssl_enabled; scalar_t__ ext_drop_unread; scalar_t__ drop_privileges; scalar_t__ temp_lru; scalar_t__ lru_segmented; scalar_t__ lru_maintainer_thread; scalar_t__ dump_enabled; scalar_t__ flush_enabled; scalar_t__ lru_crawler_tocrawl; scalar_t__ lru_crawler; scalar_t__ slab_reassign; scalar_t__ maxconns_fast; scalar_t__ sasl; int binding_protocol; scalar_t__ use_cas; scalar_t__ detail_enabled; scalar_t__ evict_to_free; scalar_t__ oldest_live; scalar_t__ maxbytes; } ;
typedef int ADD_STAT ;


 int APPEND_STAT (char*,char*,...) ;
 int assert (int ) ;
 scalar_t__ item_stats_sizes_status () ;
 char* prot_text (int ) ;
 TYPE_1__ settings ;

__attribute__((used)) static void process_stat_settings(ADD_STAT add_stats, void *c) {
    assert(add_stats);
    APPEND_STAT("maxbytes", "%llu", (unsigned long long)settings.maxbytes);
    APPEND_STAT("maxconns", "%d", settings.maxconns);
    APPEND_STAT("tcpport", "%d", settings.port);
    APPEND_STAT("udpport", "%d", settings.udpport);
    APPEND_STAT("inter", "%s", settings.inter ? settings.inter : "NULL");
    APPEND_STAT("verbosity", "%d", settings.verbose);
    APPEND_STAT("oldest", "%lu", (unsigned long)settings.oldest_live);
    APPEND_STAT("evictions", "%s", settings.evict_to_free ? "on" : "off");
    APPEND_STAT("domain_socket", "%s",
                settings.socketpath ? settings.socketpath : "NULL");
    APPEND_STAT("umask", "%o", settings.access);
    APPEND_STAT("growth_factor", "%.2f", settings.factor);
    APPEND_STAT("chunk_size", "%d", settings.chunk_size);
    APPEND_STAT("num_threads", "%d", settings.num_threads);
    APPEND_STAT("num_threads_per_udp", "%d", settings.num_threads_per_udp);
    APPEND_STAT("stat_key_prefix", "%c", settings.prefix_delimiter);
    APPEND_STAT("detail_enabled", "%s",
                settings.detail_enabled ? "yes" : "no");
    APPEND_STAT("reqs_per_event", "%d", settings.reqs_per_event);
    APPEND_STAT("cas_enabled", "%s", settings.use_cas ? "yes" : "no");
    APPEND_STAT("tcp_backlog", "%d", settings.backlog);
    APPEND_STAT("binding_protocol", "%s",
                prot_text(settings.binding_protocol));
    APPEND_STAT("auth_enabled_sasl", "%s", settings.sasl ? "yes" : "no");
    APPEND_STAT("auth_enabled_ascii", "%s", settings.auth_file ? settings.auth_file : "no");
    APPEND_STAT("item_size_max", "%d", settings.item_size_max);
    APPEND_STAT("maxconns_fast", "%s", settings.maxconns_fast ? "yes" : "no");
    APPEND_STAT("hashpower_init", "%d", settings.hashpower_init);
    APPEND_STAT("slab_reassign", "%s", settings.slab_reassign ? "yes" : "no");
    APPEND_STAT("slab_automove", "%d", settings.slab_automove);
    APPEND_STAT("slab_automove_ratio", "%.2f", settings.slab_automove_ratio);
    APPEND_STAT("slab_automove_window", "%u", settings.slab_automove_window);
    APPEND_STAT("slab_chunk_max", "%d", settings.slab_chunk_size_max);
    APPEND_STAT("lru_crawler", "%s", settings.lru_crawler ? "yes" : "no");
    APPEND_STAT("lru_crawler_sleep", "%d", settings.lru_crawler_sleep);
    APPEND_STAT("lru_crawler_tocrawl", "%lu", (unsigned long)settings.lru_crawler_tocrawl);
    APPEND_STAT("tail_repair_time", "%d", settings.tail_repair_time);
    APPEND_STAT("flush_enabled", "%s", settings.flush_enabled ? "yes" : "no");
    APPEND_STAT("dump_enabled", "%s", settings.dump_enabled ? "yes" : "no");
    APPEND_STAT("hash_algorithm", "%s", settings.hash_algorithm);
    APPEND_STAT("lru_maintainer_thread", "%s", settings.lru_maintainer_thread ? "yes" : "no");
    APPEND_STAT("lru_segmented", "%s", settings.lru_segmented ? "yes" : "no");
    APPEND_STAT("hot_lru_pct", "%d", settings.hot_lru_pct);
    APPEND_STAT("warm_lru_pct", "%d", settings.warm_lru_pct);
    APPEND_STAT("hot_max_factor", "%.2f", settings.hot_max_factor);
    APPEND_STAT("warm_max_factor", "%.2f", settings.warm_max_factor);
    APPEND_STAT("temp_lru", "%s", settings.temp_lru ? "yes" : "no");
    APPEND_STAT("temporary_ttl", "%u", settings.temporary_ttl);
    APPEND_STAT("idle_timeout", "%d", settings.idle_timeout);
    APPEND_STAT("watcher_logbuf_size", "%u", settings.logger_watcher_buf_size);
    APPEND_STAT("worker_logbuf_size", "%u", settings.logger_buf_size);
    APPEND_STAT("track_sizes", "%s", item_stats_sizes_status() ? "yes" : "no");
    APPEND_STAT("inline_ascii_response", "%s", "no");
}
