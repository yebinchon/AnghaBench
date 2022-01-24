#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_14__ ;
typedef  struct TYPE_28__   TYPE_11__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_32__ {int /*<<< orphan*/  cas; } ;
struct TYPE_33__ {TYPE_3__ request; } ;
struct TYPE_34__ {TYPE_4__ header; } ;
struct TYPE_38__ {TYPE_5__ message; } ;
typedef  TYPE_9__ protocol_binary_request_delete ;
struct TYPE_27__ {int /*<<< orphan*/  nkey; } ;
typedef  TYPE_10__ item ;
struct TYPE_30__ {size_t keylen; } ;
struct TYPE_31__ {TYPE_1__ request; } ;
struct TYPE_28__ {TYPE_8__* thread; int /*<<< orphan*/  sfd; TYPE_2__ binary_header; } ;
typedef  TYPE_11__ conn ;
struct TYPE_36__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  delete_misses; TYPE_6__* slab_stats; } ;
struct TYPE_37__ {TYPE_7__ stats; int /*<<< orphan*/  storage; } ;
struct TYPE_35__ {int /*<<< orphan*/  delete_hits; } ;
struct TYPE_29__ {int verbose; scalar_t__ detail_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DONT_UPDATE ; 
 size_t FUNC0 (TYPE_10__*) ; 
 scalar_t__ FUNC1 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_11__*) ; 
 TYPE_9__* FUNC7 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_10__* FUNC11 (char*,size_t,TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_14__ settings ; 
 int /*<<< orphan*/  FUNC16 (char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_11__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(conn *c) {
    item *it;
    uint32_t hv;

    protocol_binary_request_delete* req = FUNC7(c);

    char* key = FUNC6(c);
    size_t nkey = c->binary_header.request.keylen;

    FUNC5(c != NULL);

    if (settings.verbose > 1) {
        int ii;
        FUNC10(stderr, "Deleting ");
        for (ii = 0; ii < nkey; ++ii) {
            FUNC10(stderr, "%c", key[ii]);
        }
        FUNC10(stderr, "\n");
    }

    if (settings.detail_enabled) {
        FUNC16(key, nkey);
    }

    it = FUNC11(key, nkey, c, DONT_UPDATE, &hv);
    if (it) {
        uint64_t cas = FUNC13(req->message.header.request.cas);
        if (cas == 0 || cas == FUNC1(it)) {
            FUNC3(c->sfd, FUNC2(it), it->nkey);
            FUNC14(&c->thread->stats.mutex);
            c->thread->stats.slab_stats[FUNC0(it)].delete_hits++;
            FUNC15(&c->thread->stats.mutex);
            FUNC9(it, hv);
            FUNC4(c->thread->storage, it);
            FUNC18(c, NULL, 0, 0, 0);
        } else {
            FUNC17(c, PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS, NULL, 0);
        }
        FUNC8(it);      /* release our reference */
    } else {
        FUNC17(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, NULL, 0);
        FUNC14(&c->thread->stats.mutex);
        c->thread->stats.delete_misses++;
        FUNC15(&c->thread->stats.mutex);
    }
    FUNC12(hv);
}