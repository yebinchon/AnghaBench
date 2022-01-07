
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct web_server_static_threaded_worker {int dummy; } ;
struct TYPE_7__ {int opened; } ;
struct TYPE_6__ {int rlim_cur; } ;
struct TYPE_5__ {int id; size_t max_sockets; int thread; } ;


 int CONFIG_SECTION_WEB ;
 int NETDATA_SSL_CONTEXT_SERVER ;
 int NETDATA_THREAD_OPTION_DEFAULT ;
 int WEB_SERVER_MODE_STATIC_THREADED ;
 TYPE_4__ api_sockets ;
 TYPE_1__* callocz (size_t,int) ;
 int config_get (int ,char*,char*) ;
 int config_get_number (int ,char*,long long) ;
 int config_set (int ,char*,char*) ;
 int fatal (char*) ;
 int info (char*,...) ;
 int netdata_thread_cleanup_pop (int) ;
 int netdata_thread_cleanup_push (int ,void*) ;
 int netdata_thread_create (int *,char*,int ,int (*) (void*),void*) ;
 int processors ;
 TYPE_2__ rlimit_nofile ;
 int security_start_ssl (int ) ;
 int snprintfz (char*,int,char*,int) ;
 int socket_listen_main_static_threaded_cleanup ;
 int socket_listen_main_static_threaded_worker (void*) ;
 int static_threaded_workers_count ;
 TYPE_1__* static_workers_private_data ;
 int strcmp (int ,char*) ;
 int web_server_is_multithreaded ;
 int web_server_mode ;

void *socket_listen_main_static_threaded(void *ptr) {
    netdata_thread_cleanup_push(socket_listen_main_static_threaded_cleanup, ptr);
            web_server_mode = WEB_SERVER_MODE_STATIC_THREADED;

            if(!api_sockets.opened)
                fatal("LISTENER: no listen sockets available.");







            int def_thread_count = (processors > 6)?6:processors;

            if (!strcmp(config_get(CONFIG_SECTION_WEB, "mode", ""),"single-threaded")) {
                info("Running web server with one thread, because mode is single-threaded");
                config_set(CONFIG_SECTION_WEB, "mode", "static-threaded");
                def_thread_count = 1;
            }
            static_threaded_workers_count = config_get_number(CONFIG_SECTION_WEB, "web server threads", def_thread_count);

            if(static_threaded_workers_count < 1) static_threaded_workers_count = 1;

            size_t max_sockets = (size_t)config_get_number(CONFIG_SECTION_WEB, "web server max sockets", (long long int)(rlimit_nofile.rlim_cur / 4));

            static_workers_private_data = callocz((size_t)static_threaded_workers_count, sizeof(struct web_server_static_threaded_worker));

            web_server_is_multithreaded = (static_threaded_workers_count > 1);

            int i;
            for(i = 1; i < static_threaded_workers_count; i++) {
                static_workers_private_data[i].id = i;
                static_workers_private_data[i].max_sockets = max_sockets / static_threaded_workers_count;

                char tag[50 + 1];
                snprintfz(tag, 50, "WEB_SERVER[static%d]", i+1);

                info("starting worker %d", i+1);
                netdata_thread_create(&static_workers_private_data[i].thread, tag, NETDATA_THREAD_OPTION_DEFAULT, socket_listen_main_static_threaded_worker, (void *)&static_workers_private_data[i]);
            }


            static_workers_private_data[0].max_sockets = max_sockets / static_threaded_workers_count;
            socket_listen_main_static_threaded_worker((void *)&static_workers_private_data[0]);

    netdata_thread_cleanup_pop(1);
    return ((void*)0);
}
