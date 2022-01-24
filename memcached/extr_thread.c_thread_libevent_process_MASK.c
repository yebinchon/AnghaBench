#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timeout_fd ;
struct TYPE_8__ {TYPE_2__* thread; int /*<<< orphan*/  ssl_wbuf; int /*<<< orphan*/ * ssl; } ;
typedef  TYPE_1__ conn ;
struct TYPE_11__ {scalar_t__ verbose; int /*<<< orphan*/  ssl_enabled; } ;
struct TYPE_10__ {int sfd; int /*<<< orphan*/  c; int /*<<< orphan*/  ssl; int /*<<< orphan*/  transport; int /*<<< orphan*/  read_buffer_size; int /*<<< orphan*/  event_flags; int /*<<< orphan*/  init_state; int /*<<< orphan*/  mode; } ;
struct TYPE_9__ {int /*<<< orphan*/  base; int /*<<< orphan*/  ssl_wbuf; int /*<<< orphan*/  new_conn_queue; } ;
typedef  TYPE_2__ LIBEVENT_THREAD ;
typedef  TYPE_3__ CQ_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * conns ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
#define  queue_new_conn 129 
#define  queue_redispatch 128 
 int FUNC13 (int,...) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_4__ settings ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC15(int fd, short which, void *arg) {
    LIBEVENT_THREAD *me = arg;
    CQ_ITEM *item;
    char buf[1];
    conn *c;
    unsigned int timeout_fd;

    if (FUNC13(fd, buf, 1) != 1) {
        if (settings.verbose > 0)
            FUNC12(stderr, "Can't read from libevent pipe\n");
        return;
    }

    switch (buf[0]) {
    case 'c':
        item = FUNC8(me->new_conn_queue);

        if (NULL == item) {
            break;
        }
        switch (item->mode) {
            case queue_new_conn:
                c = FUNC6(item->sfd, item->init_state, item->event_flags,
                                   item->read_buffer_size, item->transport,
                                   me->base, item->ssl);
                if (c == NULL) {
                    if (FUNC0(item->transport)) {
                        FUNC12(stderr, "Can't listen for events on UDP socket\n");
                        FUNC11(1);
                    } else {
                        if (settings.verbose > 0) {
                            FUNC12(stderr, "Can't listen for events on fd %d\n",
                                item->sfd);
                        }
#ifdef TLS
                        if (item->ssl) {
                            SSL_shutdown(item->ssl);
                            SSL_free(item->ssl);
                        }
#endif
                        FUNC4(item->sfd);
                    }
                } else {
                    c->thread = me;
#ifdef TLS
                    if (settings.ssl_enabled && c->ssl != NULL) {
                        assert(c->thread && c->thread->ssl_wbuf);
                        c->ssl_wbuf = c->thread->ssl_wbuf;
                    }
#endif
                }
                break;

            case queue_redispatch:
                FUNC7(item->c);
                break;
        }
        FUNC9(item);
        break;
    /* we were told to pause and report in */
    case 'p':
        FUNC14();
        break;
    /* a client socket timed out */
    case 't':
        if (FUNC13(fd, &timeout_fd, sizeof(timeout_fd)) != sizeof(timeout_fd)) {
            if (settings.verbose > 0)
                FUNC12(stderr, "Can't read timeout fd from libevent pipe\n");
            return;
        }
        FUNC5(conns[timeout_fd]);
        break;
    /* asked to stop */
    case 's':
        FUNC10(me->base, NULL);
        break;
    }
}