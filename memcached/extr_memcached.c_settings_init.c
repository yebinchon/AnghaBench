
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_cas; int access; int port; int ssl_enabled; int ssl_wbuf_size; int maxbytes; int maxconns; int evict_to_free; double factor; int chunk_size; int num_threads; char prefix_delimiter; int reqs_per_event; int backlog; int item_size_max; int slab_page_size; int slab_chunk_size_max; int sasl; int maxconns_fast; int lru_crawler; int lru_crawler_sleep; int lru_maintainer_thread; int lru_segmented; int hot_lru_pct; int warm_lru_pct; double hot_max_factor; double warm_max_factor; int temp_lru; int temporary_ttl; int slab_reassign; int slab_automove; double slab_automove_ratio; int slab_automove_window; int shutdown_command; int flush_enabled; int dump_enabled; int crawls_persleep; int drop_privileges; int relaxed_privileges; int logger_buf_size; int logger_watcher_buf_size; int tail_repair_time; scalar_t__ hashpower_init; scalar_t__ idle_timeout; scalar_t__ lru_crawler_tocrawl; int binding_protocol; scalar_t__ detail_enabled; scalar_t__ num_threads_per_udp; int * auth_file; int * socketpath; scalar_t__ oldest_cas; scalar_t__ oldest_live; scalar_t__ verbose; int * inter; int ssl_last_cert_refresh_time; int * ssl_ca_cert; int * ssl_ciphers; int ssl_keyformat; int ssl_verify_mode; int * ssl_key; int * ssl_chain_cert; int * ssl_ctx; scalar_t__ udpport; } ;


 int LOGGER_BUF_SIZE ;
 int LOGGER_WATCHER_BUF_SIZE ;
 int SSL_FILETYPE_PEM ;
 int SSL_VERIFY_NONE ;
 int TAIL_REPAIR_TIME_DEFAULT ;
 int current_time ;
 int negotiating_prot ;
 TYPE_1__ settings ;

__attribute__((used)) static void settings_init(void) {
    settings.use_cas = 1;
    settings.access = 0700;
    settings.port = 11211;
    settings.udpport = 0;
    settings.inter = ((void*)0);
    settings.maxbytes = 64 * 1024 * 1024;
    settings.maxconns = 1024;
    settings.verbose = 0;
    settings.oldest_live = 0;
    settings.oldest_cas = 0;
    settings.evict_to_free = 1;
    settings.socketpath = ((void*)0);
    settings.auth_file = ((void*)0);
    settings.factor = 1.25;
    settings.chunk_size = 48;
    settings.num_threads = 4;
    settings.num_threads_per_udp = 0;
    settings.prefix_delimiter = ':';
    settings.detail_enabled = 0;
    settings.reqs_per_event = 20;
    settings.backlog = 1024;
    settings.binding_protocol = negotiating_prot;
    settings.item_size_max = 1024 * 1024;
    settings.slab_page_size = 1024 * 1024;
    settings.slab_chunk_size_max = settings.slab_page_size / 2;
    settings.sasl = 0;
    settings.maxconns_fast = 1;
    settings.lru_crawler = 0;
    settings.lru_crawler_sleep = 100;
    settings.lru_crawler_tocrawl = 0;
    settings.lru_maintainer_thread = 0;
    settings.lru_segmented = 1;
    settings.hot_lru_pct = 20;
    settings.warm_lru_pct = 40;
    settings.hot_max_factor = 0.2;
    settings.warm_max_factor = 2.0;
    settings.temp_lru = 0;
    settings.temporary_ttl = 61;
    settings.idle_timeout = 0;
    settings.hashpower_init = 0;
    settings.slab_reassign = 1;
    settings.slab_automove = 1;
    settings.slab_automove_ratio = 0.8;
    settings.slab_automove_window = 30;
    settings.shutdown_command = 0;
    settings.tail_repair_time = TAIL_REPAIR_TIME_DEFAULT;
    settings.flush_enabled = 1;
    settings.dump_enabled = 1;
    settings.crawls_persleep = 1000;
    settings.logger_watcher_buf_size = LOGGER_WATCHER_BUF_SIZE;
    settings.logger_buf_size = LOGGER_BUF_SIZE;
    settings.drop_privileges = 0;



}
