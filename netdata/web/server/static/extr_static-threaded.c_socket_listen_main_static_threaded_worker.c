
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_server_static_threaded_worker {int running; int max_sockets; } ;


 int api_sockets ;
 int default_rrd_update_every ;
 int netdata_thread_cleanup_pop (int) ;
 int netdata_thread_cleanup_push (int ,void*) ;
 int poll_events (int *,int ,int ,int ,int ,int ,int ,int ,int *,int ,int ,int,void*,int ) ;
 int socket_listen_main_static_threaded_worker_cleanup ;
 int web_allow_connections_dns ;
 int web_allow_connections_from ;
 int web_client_first_request_timeout ;
 int web_client_timeout ;
 int web_server_add_callback ;
 int web_server_del_callback ;
 int web_server_rcv_callback ;
 int web_server_snd_callback ;
 int web_server_tmr_callback ;
 struct web_server_static_threaded_worker* worker_private ;

void *socket_listen_main_static_threaded_worker(void *ptr) {
    worker_private = (struct web_server_static_threaded_worker *)ptr;
    worker_private->running = 1;

    netdata_thread_cleanup_push(socket_listen_main_static_threaded_worker_cleanup, ptr);

            poll_events(&api_sockets
                        , web_server_add_callback
                        , web_server_del_callback
                        , web_server_rcv_callback
                        , web_server_snd_callback
                        , web_server_tmr_callback
                        , web_allow_connections_from
                        , web_allow_connections_dns
                        , ((void*)0)
                        , web_client_first_request_timeout
                        , web_client_timeout
                        , default_rrd_update_every * 1000
                        , ptr
                        , worker_private->max_sockets
            );

    netdata_thread_cleanup_pop(1);
    return ((void*)0);
}
