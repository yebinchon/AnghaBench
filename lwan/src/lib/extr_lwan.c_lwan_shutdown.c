
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config_file_path; int error_template; int listener; } ;
struct lwan {int conns; int url_map_trie; TYPE_1__ config; } ;


 int free (int ) ;
 int lwan_fd_watch_shutdown (struct lwan*) ;
 int lwan_http_authorize_shutdown () ;
 int lwan_job_thread_shutdown () ;
 int lwan_readahead_shutdown () ;
 int lwan_response_shutdown (struct lwan*) ;
 int lwan_status_debug (char*) ;
 int lwan_status_info (char*) ;
 int lwan_status_shutdown (struct lwan*) ;
 int lwan_tables_shutdown () ;
 int lwan_thread_shutdown (struct lwan*) ;
 int lwan_trie_destroy (int *) ;

void lwan_shutdown(struct lwan *l)
{
    lwan_status_info("Shutting down");

    free(l->config.listener);
    free(l->config.error_template);
    free(l->config.config_file_path);

    lwan_job_thread_shutdown();
    lwan_thread_shutdown(l);

    lwan_status_debug("Shutting down URL handlers");
    lwan_trie_destroy(&l->url_map_trie);

    free(l->conns);

    lwan_response_shutdown(l);
    lwan_tables_shutdown();
    lwan_status_shutdown(l);
    lwan_http_authorize_shutdown();
    lwan_readahead_shutdown();
    lwan_fd_watch_shutdown(l);
}
