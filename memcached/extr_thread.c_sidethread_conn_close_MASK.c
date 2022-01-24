#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sfd; scalar_t__ ssl; int /*<<< orphan*/ * ssl_wbuf; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ conn ;
struct TYPE_7__ {int verbose; } ;
struct TYPE_6__ {int /*<<< orphan*/  curr_conns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  conn_closed ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_4__ settings ; 
 TYPE_2__ stats_state ; 
 int /*<<< orphan*/  stderr ; 

void FUNC6(conn *c) {
    c->state = conn_closed;
    if (settings.verbose > 1)
        FUNC5(stderr, "<%d connection closed from side thread.\n", c->sfd);
#ifdef TLS
    if (c->ssl) {
        c->ssl_wbuf = NULL;
        SSL_shutdown(c->ssl);
        SSL_free(c->ssl);
    }
#endif
    FUNC4(c->sfd);

    FUNC2();
    stats_state.curr_conns--;
    FUNC3();

    return;
}