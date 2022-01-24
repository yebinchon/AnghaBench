#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORK_STATE ;
struct TYPE_10__ {int hand_state; int /*<<< orphan*/  use_timer; } ;
struct TYPE_9__ {int /*<<< orphan*/  early_data_state; int /*<<< orphan*/  hit; int /*<<< orphan*/  shutdown; TYPE_2__ statem; } ;
typedef  TYPE_1__ SSL ;
typedef  TYPE_2__ OSSL_STATEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_EARLY_DATA_FINISHED_WRITING ; 
 int /*<<< orphan*/  SSL_EARLY_DATA_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
#define  TLS_ST_CW_CHANGE 132 
#define  TLS_ST_CW_CLNT_HELLO 131 
#define  TLS_ST_EARLY_DATA 130 
#define  TLS_ST_OK 129 
#define  TLS_ST_PENDING_EARLY_DATA_END 128 
 int /*<<< orphan*/  WORK_ERROR ; 
 int /*<<< orphan*/  WORK_FINISHED_CONTINUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 

WORK_STATE FUNC6(SSL *s, WORK_STATE wst)
{
    OSSL_STATEM *st = &s->statem;

    switch (st->hand_state) {
    default:
        /* No pre work to be done */
        break;

    case TLS_ST_CW_CLNT_HELLO:
        s->shutdown = 0;
        if (FUNC1(s)) {
            /* every DTLS ClientHello resets Finished MAC */
            if (!FUNC4(s)) {
                /* SSLfatal() already called */
                return WORK_ERROR;
            }
        }
        break;

    case TLS_ST_CW_CHANGE:
        if (FUNC1(s)) {
            if (s->hit) {
                /*
                 * We're into the last flight so we don't retransmit these
                 * messages unless we need to.
                 */
                st->use_timer = 0;
            }
#ifndef OPENSSL_NO_SCTP
            if (FUNC0(FUNC2(s))) {
                /* Calls SSLfatal() as required */
                return FUNC3(s);
            }
#endif
        }
        break;

    case TLS_ST_PENDING_EARLY_DATA_END:
        /*
         * If we've been called by SSL_do_handshake()/SSL_write(), or we did not
         * attempt to write early data before calling SSL_read() then we press
         * on with the handshake. Otherwise we pause here.
         */
        if (s->early_data_state == SSL_EARLY_DATA_FINISHED_WRITING
                || s->early_data_state == SSL_EARLY_DATA_NONE)
            return WORK_FINISHED_CONTINUE;
        /* Fall through */

    case TLS_ST_EARLY_DATA:
        return FUNC5(s, wst, 0, 1);

    case TLS_ST_OK:
        /* Calls SSLfatal() as required */
        return FUNC5(s, wst, 1, 1);
    }

    return WORK_FINISHED_CONTINUE;
}