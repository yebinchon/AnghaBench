
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_15__ ;
typedef struct TYPE_26__ TYPE_14__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


struct sigaction {int sa_mask; int sa_handler; } ;
struct rlimit {scalar_t__ rlim_cur; } ;
struct TYPE_28__ {int tv_sec; int tv_usec; } ;
struct TYPE_34__ {int tv_sec; int tv_usec; } ;
struct itimerval {TYPE_1__ it_value; TYPE_7__ it_interval; } ;
typedef size_t ngx_uint_t ;
typedef void* ngx_socket_t ;
struct TYPE_31__ {int handler; } ;
struct TYPE_35__ {scalar_t__ worker; scalar_t__ type; scalar_t__ reuseport; TYPE_4__ log; TYPE_3__* previous; int deferred_accept; TYPE_15__* connection; int fd; } ;
typedef TYPE_8__ ngx_listening_t ;
struct TYPE_36__ {int post_acceptex; } ;
typedef TYPE_9__ ngx_iocp_conf_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_22__ {int closed; int instance; int accept; void* handler; int deferred_accept; TYPE_4__* log; } ;
typedef TYPE_10__ ngx_event_t ;
struct TYPE_33__ {scalar_t__ (* init ) (TYPE_13__*,int) ;} ;
struct TYPE_23__ {TYPE_6__ actions; } ;
typedef TYPE_11__ ngx_event_module_t ;
struct TYPE_24__ {scalar_t__ use; int accept_mutex_delay; scalar_t__ accept_mutex; } ;
typedef TYPE_12__ ngx_event_conf_t ;
struct TYPE_29__ {size_t nelts; TYPE_8__* elts; } ;
struct TYPE_25__ {size_t files_n; int connection_n; size_t free_connection_n; int conf_ctx; int log; TYPE_2__ listening; TYPE_15__* free_connections; TYPE_10__* write_events; TYPE_10__* read_events; TYPE_15__* connections; int * files; TYPE_5__** modules; } ;
typedef TYPE_13__ ngx_cycle_t ;
struct TYPE_26__ {int worker_processes; scalar_t__ master; } ;
typedef TYPE_14__ ngx_core_conf_t ;
struct TYPE_27__ {scalar_t__ type; void* fd; TYPE_10__* read; TYPE_4__* log; TYPE_8__* listening; TYPE_10__* write; struct TYPE_27__* data; } ;
typedef TYPE_15__ ngx_connection_t ;
struct TYPE_32__ {scalar_t__ type; scalar_t__ ctx_index; TYPE_11__* ctx; } ;
struct TYPE_30__ {TYPE_15__* connection; } ;


 int ITIMER_REAL ;
 int NGX_CLOSE_EVENT ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_EVENT_MODULE ;
 int NGX_EXCLUSIVE_EVENT ;
 int NGX_IOCP_ACCEPT ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 int NGX_READ_EVENT ;
 int NGX_USE_EPOLL_EVENT ;
 int NGX_USE_FD_EVENT ;
 int NGX_USE_IOCP_EVENT ;
 int NGX_USE_TIMER_EVENT ;
 int RLIMIT_NOFILE ;
 int SIGALRM ;
 scalar_t__ SOCK_STREAM ;
 int exit (int) ;
 int getrlimit (int ,struct rlimit*) ;
 int ngx_accept_mutex_delay ;
 scalar_t__ ngx_accept_mutex_held ;
 int ngx_acceptex_log_error ;
 scalar_t__ ngx_add_event (TYPE_10__*,int ,int ) ;
 void* ngx_alloc (int,int ) ;
 int * ngx_calloc (int,int ) ;
 int ngx_core_module ;
 scalar_t__ ngx_del_event (TYPE_10__*,int ,int ) ;
 int ngx_errno ;
 void* ngx_event_accept ;
 void* ngx_event_acceptex ;
 int ngx_event_core_module ;
 int ngx_event_flags ;
 void* ngx_event_get_conf (int ,int ) ;
 scalar_t__ ngx_event_post_acceptex (TYPE_8__*,int ) ;
 void* ngx_event_recvmsg ;
 scalar_t__ ngx_event_timer_init (int ) ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 TYPE_15__* ngx_get_connection (int ,int ) ;
 int ngx_iocp_module ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memzero (struct sigaction*,int) ;
 int ngx_posted_accept_events ;
 int ngx_posted_events ;
 int ngx_posted_next_events ;
 int ngx_queue_init (int *) ;
 int ngx_timer_resolution ;
 int ngx_timer_signal_handler ;
 int ngx_use_accept_mutex ;
 scalar_t__ ngx_worker ;
 int setitimer (int ,struct itimerval*,int *) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 scalar_t__ stub1 (TYPE_13__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_event_process_init(ngx_cycle_t *cycle)
{
    ngx_uint_t m, i;
    ngx_event_t *rev, *wev;
    ngx_listening_t *ls;
    ngx_connection_t *c, *next, *old;
    ngx_core_conf_t *ccf;
    ngx_event_conf_t *ecf;
    ngx_event_module_t *module;

    ccf = (ngx_core_conf_t *) ngx_get_conf(cycle->conf_ctx, ngx_core_module);
    ecf = ngx_event_get_conf(cycle->conf_ctx, ngx_event_core_module);

    if (ccf->master && ccf->worker_processes > 1 && ecf->accept_mutex) {
        ngx_use_accept_mutex = 1;
        ngx_accept_mutex_held = 0;
        ngx_accept_mutex_delay = ecf->accept_mutex_delay;

    } else {
        ngx_use_accept_mutex = 0;
    }
    ngx_queue_init(&ngx_posted_accept_events);
    ngx_queue_init(&ngx_posted_next_events);
    ngx_queue_init(&ngx_posted_events);

    if (ngx_event_timer_init(cycle->log) == NGX_ERROR) {
        return NGX_ERROR;
    }

    for (m = 0; cycle->modules[m]; m++) {
        if (cycle->modules[m]->type != NGX_EVENT_MODULE) {
            continue;
        }

        if (cycle->modules[m]->ctx_index != ecf->use) {
            continue;
        }

        module = cycle->modules[m]->ctx;

        if (module->actions.init(cycle, ngx_timer_resolution) != NGX_OK) {

            exit(2);
        }

        break;
    }



    if (ngx_timer_resolution && !(ngx_event_flags & NGX_USE_TIMER_EVENT)) {
        struct sigaction sa;
        struct itimerval itv;

        ngx_memzero(&sa, sizeof(struct sigaction));
        sa.sa_handler = ngx_timer_signal_handler;
        sigemptyset(&sa.sa_mask);

        if (sigaction(SIGALRM, &sa, ((void*)0)) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "sigaction(SIGALRM) failed");
            return NGX_ERROR;
        }

        itv.it_interval.tv_sec = ngx_timer_resolution / 1000;
        itv.it_interval.tv_usec = (ngx_timer_resolution % 1000) * 1000;
        itv.it_value.tv_sec = ngx_timer_resolution / 1000;
        itv.it_value.tv_usec = (ngx_timer_resolution % 1000 ) * 1000;

        if (setitimer(ITIMER_REAL, &itv, ((void*)0)) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "setitimer() failed");
        }
    }

    if (ngx_event_flags & NGX_USE_FD_EVENT) {
        struct rlimit rlmt;

        if (getrlimit(RLIMIT_NOFILE, &rlmt) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "getrlimit(RLIMIT_NOFILE) failed");
            return NGX_ERROR;
        }

        cycle->files_n = (ngx_uint_t) rlmt.rlim_cur;

        cycle->files = ngx_calloc(sizeof(ngx_connection_t *) * cycle->files_n,
                                  cycle->log);
        if (cycle->files == ((void*)0)) {
            return NGX_ERROR;
        }
    }
    cycle->connections =
        ngx_alloc(sizeof(ngx_connection_t) * cycle->connection_n, cycle->log);
    if (cycle->connections == ((void*)0)) {
        return NGX_ERROR;
    }

    c = cycle->connections;

    cycle->read_events = ngx_alloc(sizeof(ngx_event_t) * cycle->connection_n,
                                   cycle->log);
    if (cycle->read_events == ((void*)0)) {
        return NGX_ERROR;
    }

    rev = cycle->read_events;
    for (i = 0; i < cycle->connection_n; i++) {
        rev[i].closed = 1;
        rev[i].instance = 1;
    }

    cycle->write_events = ngx_alloc(sizeof(ngx_event_t) * cycle->connection_n,
                                    cycle->log);
    if (cycle->write_events == ((void*)0)) {
        return NGX_ERROR;
    }

    wev = cycle->write_events;
    for (i = 0; i < cycle->connection_n; i++) {
        wev[i].closed = 1;
    }

    i = cycle->connection_n;
    next = ((void*)0);

    do {
        i--;

        c[i].data = next;
        c[i].read = &cycle->read_events[i];
        c[i].write = &cycle->write_events[i];
        c[i].fd = (ngx_socket_t) -1;

        next = &c[i];
    } while (i);

    cycle->free_connections = next;
    cycle->free_connection_n = cycle->connection_n;



    ls = cycle->listening.elts;
    for (i = 0; i < cycle->listening.nelts; i++) {







        c = ngx_get_connection(ls[i].fd, cycle->log);

        if (c == ((void*)0)) {
            return NGX_ERROR;
        }

        c->type = ls[i].type;
        c->log = &ls[i].log;

        c->listening = &ls[i];
        ls[i].connection = c;

        rev = c->read;

        rev->log = c->log;
        rev->accept = 1;





        if (!(ngx_event_flags & NGX_USE_IOCP_EVENT)) {
            if (ls[i].previous) {






                old = ls[i].previous->connection;

                if (ngx_del_event(old->read, NGX_READ_EVENT, NGX_CLOSE_EVENT)
                    == NGX_ERROR)
                {
                    return NGX_ERROR;
                }

                old->fd = (ngx_socket_t) -1;
            }
        }
        rev->handler = (c->type == SOCK_STREAM) ? ngx_event_accept
                                                : ngx_event_recvmsg;
        if (ngx_use_accept_mutex) {
            continue;
        }
        if (ngx_add_event(rev, NGX_READ_EVENT, 0) == NGX_ERROR) {
            return NGX_ERROR;
        }



    }

    return NGX_OK;
}
