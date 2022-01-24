#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int nkey; int nbytes; } ;
typedef  TYPE_5__ item ;
struct TYPE_17__ {int keylen; int bodylen; } ;
struct TYPE_18__ {TYPE_1__ request; } ;
struct TYPE_22__ {int item; int cmd; int sasl_started; int sfd; int authenticated; TYPE_4__* thread; void* write_and_go; int /*<<< orphan*/  sasl_conn; TYPE_2__ binary_header; } ;
typedef  TYPE_6__ conn ;
struct TYPE_23__ {int sasl; scalar_t__ verbose; } ;
struct TYPE_19__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  auth_errors; int /*<<< orphan*/  auth_cmds; } ;
struct TYPE_20__ {TYPE_3__ stats; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
#define  PROTOCOL_BINARY_CMD_SASL_AUTH 131 
#define  PROTOCOL_BINARY_CMD_SASL_STEP 130 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_AUTH_CONTINUE ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_AUTH_ERROR ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_EINVAL ; 
#define  SASL_CONTINUE 129 
#define  SASL_OK 128 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  conn_mwrite ; 
 void* conn_new_cmd ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 void* conn_swallow ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,char const*,int,char const**,unsigned int*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char const*,int,char const**,unsigned int*) ; 
 TYPE_9__ settings ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(conn *c) {
    FUNC4(settings.sasl);
    const char *out = NULL;
    unsigned int outlen = 0;

    FUNC4(c->item);
    FUNC7(c);

    int nkey = c->binary_header.request.keylen;
    int vlen = c->binary_header.request.bodylen - nkey;

    if (nkey > ((item*) c->item)->nkey) {
        FUNC15(c, PROTOCOL_BINARY_RESPONSE_EINVAL, NULL, vlen);
        c->write_and_go = conn_swallow;
        FUNC8(c->item);
        return;
    }

    char mech[nkey+1];
    FUNC9(mech, FUNC1((item*)c->item), nkey);
    mech[nkey] = 0x00;

    if (settings.verbose)
        FUNC6(stderr, "mech:  ``%s'' with %d bytes of data\n", mech, vlen);

    const char *challenge = vlen == 0 ? NULL : FUNC0((item*) c->item);

    if (vlen > ((item*) c->item)->nbytes) {
        FUNC15(c, PROTOCOL_BINARY_RESPONSE_EINVAL, NULL, vlen);
        c->write_and_go = conn_swallow;
        FUNC8(c->item);
        return;
    }

    int result=-1;

    switch (c->cmd) {
    case PROTOCOL_BINARY_CMD_SASL_AUTH:
        result = FUNC12(c->sasl_conn, mech,
                                   challenge, vlen,
                                   &out, &outlen);
        c->sasl_started = (result == SASL_OK || result == SASL_CONTINUE);
        break;
    case PROTOCOL_BINARY_CMD_SASL_STEP:
        if (!c->sasl_started) {
            if (settings.verbose) {
                FUNC6(stderr, "%d: SASL_STEP called but sasl_server_start "
                        "not called for this connection!\n", c->sfd);
            }
            break;
        }
        result = FUNC13(c->sasl_conn,
                                  challenge, vlen,
                                  &out, &outlen);
        break;
    default:
        FUNC4(false); /* CMD should be one of the above */
        /* This code is pretty much impossible, but makes the compiler
           happier */
        if (settings.verbose) {
            FUNC6(stderr, "Unhandled command %d with challenge %s\n",
                    c->cmd, challenge);
        }
        break;
    }

    FUNC8(c->item);

    if (settings.verbose) {
        FUNC6(stderr, "sasl result code:  %d\n", result);
    }

    switch(result) {
    case SASL_OK:
        c->authenticated = true;
        FUNC16(c, "Authenticated", 0, 0, FUNC14("Authenticated"));
        FUNC10(&c->thread->stats.mutex);
        c->thread->stats.auth_cmds++;
        FUNC11(&c->thread->stats.mutex);
        break;
    case SASL_CONTINUE:
        FUNC2(c, PROTOCOL_BINARY_RESPONSE_AUTH_CONTINUE, 0, 0, outlen);
        if(outlen > 0) {
            FUNC3(c, out, outlen);
        }
        FUNC5(c, conn_mwrite);
        c->write_and_go = conn_new_cmd;
        break;
    default:
        if (settings.verbose)
            FUNC6(stderr, "Unknown sasl response:  %d\n", result);
        FUNC15(c, PROTOCOL_BINARY_RESPONSE_AUTH_ERROR, NULL, 0);
        FUNC10(&c->thread->stats.mutex);
        c->thread->stats.auth_cmds++;
        c->thread->stats.auth_errors++;
        FUNC11(&c->thread->stats.mutex);
    }
}