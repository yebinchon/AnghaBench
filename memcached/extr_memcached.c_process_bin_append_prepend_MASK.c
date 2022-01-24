#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int it_flags; } ;
typedef  TYPE_3__ item ;
struct TYPE_15__ {int keylen; int bodylen; int /*<<< orphan*/  cas; } ;
struct TYPE_16__ {TYPE_1__ request; } ;
struct TYPE_18__ {int sbytes; int cmd; int rlbytes; int /*<<< orphan*/  substate; void* ritem; TYPE_3__* item; TYPE_2__ binary_header; int /*<<< orphan*/  write_and_go; } ;
typedef  TYPE_4__ conn ;
struct TYPE_19__ {int verbose; scalar_t__ detail_enabled; } ;

/* Variables and functions */
 int ITEM_CHUNKED ; 
 void* FUNC0 (TYPE_3__*) ; 
 void* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int NREAD_APPEND ; 
 int NREAD_PREPEND ; 
#define  PROTOCOL_BINARY_CMD_APPEND 129 
#define  PROTOCOL_BINARY_CMD_PREPEND 128 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_E2BIG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bin_read_set_value ; 
 char* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  conn_nread ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_swallow ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__* FUNC7 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*) ; 
 TYPE_6__ settings ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC12(conn *c) {
    char *key;
    int nkey;
    int vlen;
    item *it;

    FUNC3(c != NULL);

    key = FUNC4(c);
    nkey = c->binary_header.request.keylen;
    vlen = c->binary_header.request.bodylen - nkey;

    if (settings.verbose > 1) {
        FUNC6(stderr, "Value len is %d\n", vlen);
    }

    if (settings.detail_enabled) {
        FUNC10(key, nkey);
    }

    it = FUNC7(key, nkey, 0, 0, vlen+2);

    if (it == 0) {
        if (! FUNC8(nkey, 0, vlen + 2)) {
            FUNC11(c, PROTOCOL_BINARY_RESPONSE_E2BIG, NULL, vlen);
        } else {
            FUNC9(c, "SERVER_ERROR Out of memory allocating item");
            /* OOM calls eat the swallow value. Add here. */
            c->sbytes = vlen;
        }
        /* swallow the data line */
        c->write_and_go = conn_swallow;
        return;
    }

    FUNC2(it, c->binary_header.request.cas);

    switch (c->cmd) {
        case PROTOCOL_BINARY_CMD_APPEND:
            c->cmd = NREAD_APPEND;
            break;
        case PROTOCOL_BINARY_CMD_PREPEND:
            c->cmd = NREAD_PREPEND;
            break;
        default:
            FUNC3(0);
    }

    c->item = it;
#ifdef NEED_ALIGN
    if (it->it_flags & ITEM_CHUNKED) {
        c->ritem = ITEM_schunk(it);
    } else {
        c->ritem = ITEM_data(it);
    }
#else
    c->ritem = FUNC0(it);
#endif
    c->rlbytes = vlen;
    FUNC5(c, conn_nread);
    c->substate = bin_read_set_value;
}