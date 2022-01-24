#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct event_config {int dummy; } ;
struct conn_queue {int dummy; } ;
typedef  int /*<<< orphan*/  io_wrap ;
struct TYPE_8__ {scalar_t__ ssl_wbuf_size; scalar_t__ ssl_enabled; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_7__ {char* ssl_wbuf; int /*<<< orphan*/ * io_cache; int /*<<< orphan*/ * suffix_cache; TYPE_1__ stats; int /*<<< orphan*/ * new_conn_queue; int /*<<< orphan*/  notify_event; int /*<<< orphan*/  base; int /*<<< orphan*/  notify_receive_fd; } ;
typedef  TYPE_2__ LIBEVENT_THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_BASE_FLAG_NOLOCK ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int EXIT_FAILURE ; 
 int SUFFIX_SIZE ; 
 void* FUNC0 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct event_config*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct event_config*) ; 
 struct event_config* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct event_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC12 (size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ settings ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  thread_libevent_process ; 

__attribute__((used)) static void FUNC15(LIBEVENT_THREAD *me) {
#if defined(LIBEVENT_VERSION_NUMBER) && LIBEVENT_VERSION_NUMBER >= 0x02000101
    struct event_config *ev_config;
    ev_config = event_config_new();
    event_config_set_flag(ev_config, EVENT_BASE_FLAG_NOLOCK);
    me->base = event_base_new_with_config(ev_config);
    event_config_free(ev_config);
#else
    me->base = FUNC8();
#endif

    if (! me->base) {
        FUNC11(stderr, "Can't allocate event base\n");
        FUNC10(1);
    }

    /* Listen for notifications from other threads */
    FUNC9(&me->notify_event, me->notify_receive_fd,
              EV_READ | EV_PERSIST, thread_libevent_process, me);
    FUNC4(me->base, &me->notify_event);

    if (FUNC2(&me->notify_event, 0) == -1) {
        FUNC11(stderr, "Can't monitor libevent notify pipe\n");
        FUNC10(1);
    }

    me->new_conn_queue = FUNC12(sizeof(struct conn_queue));
    if (me->new_conn_queue == NULL) {
        FUNC13("Failed to allocate memory for connection queue");
        FUNC10(EXIT_FAILURE);
    }
    FUNC1(me->new_conn_queue);

    if (FUNC14(&me->stats.mutex, NULL) != 0) {
        FUNC13("Failed to initialize mutex");
        FUNC10(EXIT_FAILURE);
    }

    me->suffix_cache = FUNC0("suffix", SUFFIX_SIZE, sizeof(char*),
                                    NULL, NULL);
    if (me->suffix_cache == NULL) {
        FUNC11(stderr, "Failed to create suffix cache\n");
        FUNC10(EXIT_FAILURE);
    }
#ifdef EXTSTORE
    me->io_cache = cache_create("io", sizeof(io_wrap), sizeof(char*), NULL, NULL);
    if (me->io_cache == NULL) {
        fprintf(stderr, "Failed to create IO object cache\n");
        exit(EXIT_FAILURE);
    }
#endif
#ifdef TLS
    if (settings.ssl_enabled) {
        me->ssl_wbuf = (char *)malloc((size_t)settings.ssl_wbuf_size);
        if (me->ssl_wbuf == NULL) {
            fprintf(stderr, "Failed to allocate the SSL write buffer\n");
            exit(EXIT_FAILURE);
        }
    }
#endif
}