#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_15__ ;
typedef  struct TYPE_23__   TYPE_12__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_23__ {void* value; } ;
struct TYPE_29__ {TYPE_12__ body; } ;
struct TYPE_32__ {TYPE_5__ message; } ;
typedef  TYPE_8__ protocol_binary_response_incr ;
struct TYPE_27__ {int expiration; void* initial; void* delta; } ;
struct TYPE_28__ {TYPE_3__ body; } ;
struct TYPE_33__ {TYPE_4__ message; } ;
typedef  TYPE_9__ protocol_binary_request_incr ;
typedef  int /*<<< orphan*/  item ;
struct TYPE_25__ {size_t keylen; scalar_t__ cas; } ;
struct TYPE_26__ {TYPE_1__ request; } ;
struct TYPE_22__ {int wsize; scalar_t__ cmd; scalar_t__ cas; TYPE_7__* thread; TYPE_2__ binary_header; scalar_t__ wbuf; } ;
typedef  TYPE_10__ conn ;
struct TYPE_30__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  decr_misses; int /*<<< orphan*/  incr_misses; } ;
struct TYPE_31__ {TYPE_6__ stats; } ;
struct TYPE_24__ {int verbose; } ;

/* Variables and functions */
#define  DELTA_ITEM_CAS_MISMATCH 132 
#define  DELTA_ITEM_NOT_FOUND 131 
#define  EOM 130 
 int INCR_MAX_STORAGE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
#define  NON_NUMERIC 129 
 int /*<<< orphan*/  NREAD_ADD ; 
#define  OK 128 
 scalar_t__ PROTOCOL_BINARY_CMD_INCREMENT ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_DELTA_BADVAL ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_NOT_STORED ; 
 int FUNC2 (TYPE_10__*,char*,size_t,int,void*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (TYPE_10__*) ; 
 TYPE_9__* FUNC5 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC7 (void*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC11 (int) ; 
 void* FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_10__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 TYPE_15__ settings ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,unsigned long long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_10__*) ; 
 int FUNC19 (char*) ; 
 void* FUNC20 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_10__*,TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC23(conn *c) {
    item *it;
    char *key;
    size_t nkey;
    /* Weird magic in add_delta forces me to pad here */
    char tmpbuf[INCR_MAX_STORAGE_LEN];
    uint64_t cas = 0;

    protocol_binary_response_incr* rsp = (protocol_binary_response_incr*)c->wbuf;
    protocol_binary_request_incr* req = FUNC5(c);

    FUNC3(c != NULL);
    FUNC3(c->wsize >= sizeof(*rsp));

    /* fix byteorder in the request */
    req->message.body.delta = FUNC12(req->message.body.delta);
    req->message.body.initial = FUNC12(req->message.body.initial);
    req->message.body.expiration = FUNC11(req->message.body.expiration);
    key = FUNC4(c);
    nkey = c->binary_header.request.keylen;

    if (settings.verbose > 1) {
        int i;
        FUNC6(stderr, "incr ");

        for (i = 0; i < nkey; i++) {
            FUNC6(stderr, "%c", key[i]);
        }
        FUNC6(stderr, " %lld, %llu, %d\n",
                (long long)req->message.body.delta,
                (long long)req->message.body.initial,
                req->message.body.expiration);
    }

    if (c->binary_header.request.cas != 0) {
        cas = c->binary_header.request.cas;
    }
    switch(FUNC2(c, key, nkey, c->cmd == PROTOCOL_BINARY_CMD_INCREMENT,
                     req->message.body.delta, tmpbuf,
                     &cas)) {
    case OK:
        rsp->message.body.value = FUNC7(FUNC20(tmpbuf, NULL, 10));
        if (cas) {
            c->cas = cas;
        }
        FUNC22(c, &rsp->message.body, 0, 0,
                           sizeof(rsp->message.body.value));
        break;
    case NON_NUMERIC:
        FUNC21(c, PROTOCOL_BINARY_RESPONSE_DELTA_BADVAL, NULL, 0);
        break;
    case EOM:
        FUNC13(c, "SERVER_ERROR Out of memory incrementing value");
        break;
    case DELTA_ITEM_NOT_FOUND:
        if (req->message.body.expiration != 0xffffffff) {
            /* Save some room for the response */
            rsp->message.body.value = FUNC7(req->message.body.initial);

            FUNC17(tmpbuf, INCR_MAX_STORAGE_LEN, "%llu",
                (unsigned long long)req->message.body.initial);
            int res = FUNC19(tmpbuf);
            it = FUNC8(key, nkey, 0, FUNC16(req->message.body.expiration),
                            res + 2);

            if (it != NULL) {
                FUNC10(FUNC0(it), tmpbuf, res);
                FUNC10(FUNC0(it) + res, "\r\n", 2);

                if (FUNC18(it, NREAD_ADD, c)) {
                    c->cas = FUNC1(it);
                    FUNC22(c, &rsp->message.body, 0, 0, sizeof(rsp->message.body.value));
                } else {
                    FUNC21(c, PROTOCOL_BINARY_RESPONSE_NOT_STORED,
                                    NULL, 0);
                }
                FUNC9(it);         /* release our reference */
            } else {
                FUNC13(c,
                        "SERVER_ERROR Out of memory allocating new item");
            }
        } else {
            FUNC14(&c->thread->stats.mutex);
            if (c->cmd == PROTOCOL_BINARY_CMD_INCREMENT) {
                c->thread->stats.incr_misses++;
            } else {
                c->thread->stats.decr_misses++;
            }
            FUNC15(&c->thread->stats.mutex);

            FUNC21(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, NULL, 0);
        }
        break;
    case DELTA_ITEM_CAS_MISMATCH:
        FUNC21(c, PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS, NULL, 0);
        break;
    }
}