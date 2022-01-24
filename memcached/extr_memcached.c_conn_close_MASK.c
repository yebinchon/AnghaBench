#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int sfd; scalar_t__ ssl; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ conn ;
struct TYPE_9__ {int verbose; } ;
struct TYPE_8__ {int /*<<< orphan*/  curr_conns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int allow_new_conns ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  conn_closed ; 
 int /*<<< orphan*/  conn_lock ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_3__ settings ; 
 TYPE_2__ stats_state ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC13(conn *c) {
    FUNC5(c != NULL);

    /* delete the event, the socket and the conn */
    FUNC9(&c->event);

    if (settings.verbose > 1)
        FUNC10(stderr, "<%d connection closed.\n", c->sfd);

    FUNC7(c);

    FUNC0(c->sfd);
    FUNC8(c, conn_closed);
#ifdef TLS
    if (c->ssl) {
        SSL_shutdown(c->ssl);
        SSL_free(c->ssl);
    }
#endif
    FUNC6(c->sfd);
    FUNC11(&conn_lock);
    allow_new_conns = true;
    FUNC12(&conn_lock);

    FUNC3();
    stats_state.curr_conns--;
    FUNC4();

    return;
}