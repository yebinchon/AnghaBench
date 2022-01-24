#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  packet_id; int /*<<< orphan*/  pid_persist; } ;
struct TYPE_6__ {TYPE_2__ opt; int /*<<< orphan*/  work; } ;
struct tls_session {int /*<<< orphan*/  session_id; int /*<<< orphan*/ * key; TYPE_3__ tls_wrap; int /*<<< orphan*/  key_id; TYPE_1__* opt; int /*<<< orphan*/  initial_opcode; } ;
struct TYPE_4__ {int key_method; int /*<<< orphan*/  replay_time; int /*<<< orphan*/  replay_window; int /*<<< orphan*/  frame; TYPE_3__ tls_wrap; scalar_t__ tls_crypt_v2; scalar_t__ server; } ;
struct tls_multi {TYPE_1__ opt; } ;
struct gc_arena {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tls_session) ; 
 int /*<<< orphan*/  D_TLS_DEBUG ; 
 size_t KS_PRIMARY ; 
 int /*<<< orphan*/  P_CONTROL_HARD_RESET_CLIENT_V1 ; 
 int /*<<< orphan*/  P_CONTROL_HARD_RESET_CLIENT_V2 ; 
 int /*<<< orphan*/  P_CONTROL_HARD_RESET_CLIENT_V3 ; 
 int /*<<< orphan*/  P_CONTROL_HARD_RESET_SERVER_V1 ; 
 int /*<<< orphan*/  P_CONTROL_HARD_RESET_SERVER_V2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct gc_arena*) ; 
 struct gc_arena FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct tls_session*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct tls_multi *multi, struct tls_session *session)
{
    struct gc_arena gc = FUNC6();

    FUNC4(D_TLS_DEBUG, "TLS: tls_session_init: entry");

    FUNC2(*session);

    /* Set options data to point to parent's option structure */
    session->opt = &multi->opt;

    /* Randomize session # if it is 0 */
    while (!FUNC10(&session->session_id))
    {
        FUNC12(&session->session_id);
    }

    /* Are we a TLS server or client? */
    FUNC0(session->opt->key_method >= 1);
    if (session->opt->key_method == 1)
    {
        session->initial_opcode = session->opt->server ?
                                  P_CONTROL_HARD_RESET_SERVER_V1 : P_CONTROL_HARD_RESET_CLIENT_V1;
    }
    else /* session->opt->key_method >= 2 */
    {
        if (session->opt->server)
        {
            session->initial_opcode = P_CONTROL_HARD_RESET_SERVER_V2;
        }
        else
        {
            session->initial_opcode = session->opt->tls_crypt_v2 ?
                                      P_CONTROL_HARD_RESET_CLIENT_V3 : P_CONTROL_HARD_RESET_CLIENT_V2;
        }
    }

    /* Initialize control channel authentication parameters */
    session->tls_wrap = session->opt->tls_wrap;
    session->tls_wrap.work = FUNC3(FUNC1(&session->opt->frame));

    /* initialize packet ID replay window for --tls-auth */
    FUNC8(&session->tls_wrap.opt.packet_id,
                   session->opt->replay_window,
                   session->opt->replay_time,
                   "TLS_WRAP", session->key_id);

    /* load most recent packet-id to replay protect on --tls-auth */
    FUNC9(session->tls_wrap.opt.pid_persist,
                               &session->tls_wrap.opt.packet_id);

    FUNC7(session, &session->key[KS_PRIMARY]);

    FUNC4(D_TLS_DEBUG, "TLS: tls_session_init: new session object, sid=%s",
         FUNC11(&session->session_id, &gc));

    FUNC5(&gc);
}