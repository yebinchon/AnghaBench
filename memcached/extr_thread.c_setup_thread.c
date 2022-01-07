
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct event_config {int dummy; } ;
struct conn_queue {int dummy; } ;
typedef int io_wrap ;
struct TYPE_8__ {scalar_t__ ssl_wbuf_size; scalar_t__ ssl_enabled; } ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_7__ {char* ssl_wbuf; int * io_cache; int * suffix_cache; TYPE_1__ stats; int * new_conn_queue; int notify_event; int base; int notify_receive_fd; } ;
typedef TYPE_2__ LIBEVENT_THREAD ;


 int EVENT_BASE_FLAG_NOLOCK ;
 int EV_PERSIST ;
 int EV_READ ;
 int EXIT_FAILURE ;
 int SUFFIX_SIZE ;
 void* cache_create (char*,int,int,int *,int *) ;
 int cq_init (int *) ;
 int event_add (int *,int ) ;
 int event_base_new_with_config (struct event_config*) ;
 int event_base_set (int ,int *) ;
 int event_config_free (struct event_config*) ;
 struct event_config* event_config_new () ;
 int event_config_set_flag (struct event_config*,int ) ;
 int event_init () ;
 int event_set (int *,int ,int,int ,TYPE_2__*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int * malloc (size_t) ;
 int perror (char*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 TYPE_4__ settings ;
 int stderr ;
 int thread_libevent_process ;

__attribute__((used)) static void setup_thread(LIBEVENT_THREAD *me) {







    me->base = event_init();


    if (! me->base) {
        fprintf(stderr, "Can't allocate event base\n");
        exit(1);
    }


    event_set(&me->notify_event, me->notify_receive_fd,
              EV_READ | EV_PERSIST, thread_libevent_process, me);
    event_base_set(me->base, &me->notify_event);

    if (event_add(&me->notify_event, 0) == -1) {
        fprintf(stderr, "Can't monitor libevent notify pipe\n");
        exit(1);
    }

    me->new_conn_queue = malloc(sizeof(struct conn_queue));
    if (me->new_conn_queue == ((void*)0)) {
        perror("Failed to allocate memory for connection queue");
        exit(EXIT_FAILURE);
    }
    cq_init(me->new_conn_queue);

    if (pthread_mutex_init(&me->stats.mutex, ((void*)0)) != 0) {
        perror("Failed to initialize mutex");
        exit(EXIT_FAILURE);
    }

    me->suffix_cache = cache_create("suffix", SUFFIX_SIZE, sizeof(char*),
                                    ((void*)0), ((void*)0));
    if (me->suffix_cache == ((void*)0)) {
        fprintf(stderr, "Failed to create suffix cache\n");
        exit(EXIT_FAILURE);
    }
}
