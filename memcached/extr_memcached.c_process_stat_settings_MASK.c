#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* maxconns; char* port; char* udpport; char* inter; char* verbose; char* socketpath; char* access; char* factor; char* chunk_size; char* num_threads; char* num_threads_per_udp; char* prefix_delimiter; char* reqs_per_event; char* backlog; char* auth_file; char* item_size_max; char* hashpower_init; char* slab_automove; char* slab_automove_ratio; char* slab_automove_window; char* slab_chunk_size_max; char* lru_crawler_sleep; char* tail_repair_time; char* hash_algorithm; char* hot_lru_pct; char* warm_lru_pct; char* hot_max_factor; char* warm_max_factor; char* temporary_ttl; char* idle_timeout; char* logger_watcher_buf_size; char* logger_buf_size; char* ext_item_size; char* ext_item_age; char* ext_low_ttl; char* ext_recache_rate; char* ext_wbuf_size; char* ext_compact_under; char* ext_drop_under; char* ext_max_frag; char* slab_automove_freeratio; char* ssl_chain_cert; char* ssl_key; char* ssl_verify_mode; char* ssl_keyformat; char* ssl_ciphers; char* ssl_ca_cert; char* ssl_wbuf_size; scalar_t__ ssl_enabled; scalar_t__ ext_drop_unread; scalar_t__ drop_privileges; scalar_t__ temp_lru; scalar_t__ lru_segmented; scalar_t__ lru_maintainer_thread; scalar_t__ dump_enabled; scalar_t__ flush_enabled; scalar_t__ lru_crawler_tocrawl; scalar_t__ lru_crawler; scalar_t__ slab_reassign; scalar_t__ maxconns_fast; scalar_t__ sasl; int /*<<< orphan*/  binding_protocol; scalar_t__ use_cas; scalar_t__ detail_enabled; scalar_t__ evict_to_free; scalar_t__ oldest_live; scalar_t__ maxbytes; } ;
typedef  int /*<<< orphan*/  ADD_STAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ settings ; 

__attribute__((used)) static void FUNC4(ADD_STAT add_stats, void *c) {
    FUNC1(add_stats);
    FUNC0("maxbytes", "%llu", (unsigned long long)settings.maxbytes);
    FUNC0("maxconns", "%d", settings.maxconns);
    FUNC0("tcpport", "%d", settings.port);
    FUNC0("udpport", "%d", settings.udpport);
    FUNC0("inter", "%s", settings.inter ? settings.inter : "NULL");
    FUNC0("verbosity", "%d", settings.verbose);
    FUNC0("oldest", "%lu", (unsigned long)settings.oldest_live);
    FUNC0("evictions", "%s", settings.evict_to_free ? "on" : "off");
    FUNC0("domain_socket", "%s",
                settings.socketpath ? settings.socketpath : "NULL");
    FUNC0("umask", "%o", settings.access);
    FUNC0("growth_factor", "%.2f", settings.factor);
    FUNC0("chunk_size", "%d", settings.chunk_size);
    FUNC0("num_threads", "%d", settings.num_threads);
    FUNC0("num_threads_per_udp", "%d", settings.num_threads_per_udp);
    FUNC0("stat_key_prefix", "%c", settings.prefix_delimiter);
    FUNC0("detail_enabled", "%s",
                settings.detail_enabled ? "yes" : "no");
    FUNC0("reqs_per_event", "%d", settings.reqs_per_event);
    FUNC0("cas_enabled", "%s", settings.use_cas ? "yes" : "no");
    FUNC0("tcp_backlog", "%d", settings.backlog);
    FUNC0("binding_protocol", "%s",
                FUNC3(settings.binding_protocol));
    FUNC0("auth_enabled_sasl", "%s", settings.sasl ? "yes" : "no");
    FUNC0("auth_enabled_ascii", "%s", settings.auth_file ? settings.auth_file : "no");
    FUNC0("item_size_max", "%d", settings.item_size_max);
    FUNC0("maxconns_fast", "%s", settings.maxconns_fast ? "yes" : "no");
    FUNC0("hashpower_init", "%d", settings.hashpower_init);
    FUNC0("slab_reassign", "%s", settings.slab_reassign ? "yes" : "no");
    FUNC0("slab_automove", "%d", settings.slab_automove);
    FUNC0("slab_automove_ratio", "%.2f", settings.slab_automove_ratio);
    FUNC0("slab_automove_window", "%u", settings.slab_automove_window);
    FUNC0("slab_chunk_max", "%d", settings.slab_chunk_size_max);
    FUNC0("lru_crawler", "%s", settings.lru_crawler ? "yes" : "no");
    FUNC0("lru_crawler_sleep", "%d", settings.lru_crawler_sleep);
    FUNC0("lru_crawler_tocrawl", "%lu", (unsigned long)settings.lru_crawler_tocrawl);
    FUNC0("tail_repair_time", "%d", settings.tail_repair_time);
    FUNC0("flush_enabled", "%s", settings.flush_enabled ? "yes" : "no");
    FUNC0("dump_enabled", "%s", settings.dump_enabled ? "yes" : "no");
    FUNC0("hash_algorithm", "%s", settings.hash_algorithm);
    FUNC0("lru_maintainer_thread", "%s", settings.lru_maintainer_thread ? "yes" : "no");
    FUNC0("lru_segmented", "%s", settings.lru_segmented ? "yes" : "no");
    FUNC0("hot_lru_pct", "%d", settings.hot_lru_pct);
    FUNC0("warm_lru_pct", "%d", settings.warm_lru_pct);
    FUNC0("hot_max_factor", "%.2f", settings.hot_max_factor);
    FUNC0("warm_max_factor", "%.2f", settings.warm_max_factor);
    FUNC0("temp_lru", "%s", settings.temp_lru ? "yes" : "no");
    FUNC0("temporary_ttl", "%u", settings.temporary_ttl);
    FUNC0("idle_timeout", "%d", settings.idle_timeout);
    FUNC0("watcher_logbuf_size", "%u", settings.logger_watcher_buf_size);
    FUNC0("worker_logbuf_size", "%u", settings.logger_buf_size);
    FUNC0("track_sizes", "%s", FUNC2() ? "yes" : "no");
    FUNC0("inline_ascii_response", "%s", "no"); // setting is dead, cannot be yes.
#ifdef HAVE_DROP_PRIVILEGES
    APPEND_STAT("drop_privileges", "%s", settings.drop_privileges ? "yes" : "no");
#endif
#ifdef EXTSTORE
    APPEND_STAT("ext_item_size", "%u", settings.ext_item_size);
    APPEND_STAT("ext_item_age", "%u", settings.ext_item_age);
    APPEND_STAT("ext_low_ttl", "%u", settings.ext_low_ttl);
    APPEND_STAT("ext_recache_rate", "%u", settings.ext_recache_rate);
    APPEND_STAT("ext_wbuf_size", "%u", settings.ext_wbuf_size);
    APPEND_STAT("ext_compact_under", "%u", settings.ext_compact_under);
    APPEND_STAT("ext_drop_under", "%u", settings.ext_drop_under);
    APPEND_STAT("ext_max_frag", "%.2f", settings.ext_max_frag);
    APPEND_STAT("slab_automove_freeratio", "%.3f", settings.slab_automove_freeratio);
    APPEND_STAT("ext_drop_unread", "%s", settings.ext_drop_unread ? "yes" : "no");
#endif
#ifdef TLS
    APPEND_STAT("ssl_enabled", "%s", settings.ssl_enabled ? "yes" : "no");
    APPEND_STAT("ssl_chain_cert", "%s", settings.ssl_chain_cert);
    APPEND_STAT("ssl_key", "%s", settings.ssl_key);
    APPEND_STAT("ssl_verify_mode", "%d", settings.ssl_verify_mode);
    APPEND_STAT("ssl_keyformat", "%d", settings.ssl_keyformat);
    APPEND_STAT("ssl_ciphers", "%s", settings.ssl_ciphers ? settings.ssl_ciphers : "NULL");
    APPEND_STAT("ssl_ca_cert", "%s", settings.ssl_ca_cert ? settings.ssl_ca_cert : "NULL");
    APPEND_STAT("ssl_wbuf_size", "%u", settings.ssl_wbuf_size);
#endif
}