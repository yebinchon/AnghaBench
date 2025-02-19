
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lwan_config {int dummy; } ;
struct TYPE_3__ {int count; unsigned int max_fd; } ;
struct TYPE_4__ {int n_threads; void* config_file_path; void* listener; } ;
struct lwan {int n_cpus; TYPE_1__ thread; TYPE_2__ config; } ;
typedef scalar_t__ rlim_t ;


 int SIGPIPE ;
 int SIG_IGN ;
 int allocate_connections (struct lwan*,size_t) ;
 void* dup_or_null (void*) ;
 int get_number_of_cpus () ;
 int lwan_fd_watch_init (struct lwan*) ;
 int lwan_http_authorize_init () ;
 int lwan_job_thread_init () ;
 int lwan_readahead_init () ;
 int lwan_response_init (struct lwan*) ;
 int lwan_socket_init (struct lwan*) ;
 int lwan_status_debug (char*) ;
 int lwan_status_info (char*,int,unsigned int) ;
 int lwan_status_init (struct lwan*) ;
 int lwan_status_warning (char*,int,...) ;
 int lwan_tables_init () ;
 int lwan_thread_init (struct lwan*) ;
 int memcpy (TYPE_2__*,struct lwan_config const*,int) ;
 int memset (struct lwan*,int ,int) ;
 scalar_t__ setup_open_file_count_limits () ;
 int signal (int ,int ) ;
 int try_setup_from_config (struct lwan*,struct lwan_config const*) ;

void lwan_init_with_config(struct lwan *l, const struct lwan_config *config)
{

    memset(l, 0, sizeof(*l));
    memcpy(&l->config, config, sizeof(*config));
    l->config.listener = dup_or_null(l->config.listener);
    l->config.config_file_path = dup_or_null(l->config.config_file_path);



    lwan_status_init(l);




    lwan_job_thread_init();
    lwan_tables_init();

    try_setup_from_config(l, config);

    lwan_response_init(l);


    lwan_status_debug("Initializing lwan web server");

    l->n_cpus = get_number_of_cpus();
    if (!l->config.n_threads) {
        l->thread.count = l->n_cpus;
        if (l->thread.count == 1)
            l->thread.count = 2;
    } else if (l->config.n_threads > 3 * l->n_cpus) {
        l->thread.count = (short unsigned int)(l->n_cpus * 3);

        lwan_status_warning("%d threads requested, but only %d online CPUs; "
                            "capping to %d threads",
                            l->config.n_threads, l->n_cpus, 3 * l->n_cpus);
    } else if (l->config.n_threads > 255) {
        l->thread.count = 256;

        lwan_status_warning("%d threads requested, but max 256 supported",
            l->config.n_threads);
    } else {
        l->thread.count = l->config.n_threads;
    }

    rlim_t max_open_files = setup_open_file_count_limits();
    allocate_connections(l, (size_t)max_open_files);

    l->thread.max_fd = (unsigned)max_open_files / (unsigned)l->thread.count;
    lwan_status_info("Using %d threads, maximum %d sockets per thread",
                     l->thread.count, l->thread.max_fd);

    signal(SIGPIPE, SIG_IGN);

    lwan_readahead_init();
    lwan_thread_init(l);
    lwan_socket_init(l);
    lwan_http_authorize_init();
    lwan_fd_watch_init(l);
}
