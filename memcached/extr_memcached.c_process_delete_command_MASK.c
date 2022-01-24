#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_23__ {char* value; size_t length; } ;
typedef  TYPE_4__ token_t ;
struct TYPE_24__ {int /*<<< orphan*/  nkey; } ;
typedef  TYPE_5__ item ;
struct TYPE_25__ {TYPE_3__* thread; int /*<<< orphan*/  sfd; } ;
typedef  TYPE_6__ conn ;
struct TYPE_26__ {scalar_t__ detail_enabled; } ;
struct TYPE_21__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  delete_misses; TYPE_1__* slab_stats; } ;
struct TYPE_22__ {TYPE_2__ stats; int /*<<< orphan*/  storage; } ;
struct TYPE_20__ {int /*<<< orphan*/  delete_hits; } ;

/* Variables and functions */
 int /*<<< orphan*/  DONT_UPDATE ; 
 size_t FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 size_t KEY_MAX_LENGTH ; 
 int KEY_TOKEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (char*,size_t,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_6__*,TYPE_4__*,size_t const) ; 
 TYPE_7__ settings ; 
 int /*<<< orphan*/  FUNC13 (char*,size_t) ; 
 scalar_t__ FUNC14 (char*,char*) ; 

__attribute__((used)) static void FUNC15(conn *c, token_t *tokens, const size_t ntokens) {
    char *key;
    size_t nkey;
    item *it;
    uint32_t hv;

    FUNC4(c != NULL);

    if (ntokens > 3) {
        bool hold_is_zero = FUNC14(tokens[KEY_TOKEN+1].value, "0") == 0;
        bool sets_noreply = FUNC12(c, tokens, ntokens);
        bool valid = (ntokens == 4 && (hold_is_zero || sets_noreply))
            || (ntokens == 5 && hold_is_zero && sets_noreply);
        if (!valid) {
            FUNC9(c, "CLIENT_ERROR bad command line format.  "
                       "Usage: delete <key> [noreply]");
            return;
        }
    }


    key = tokens[KEY_TOKEN].value;
    nkey = tokens[KEY_TOKEN].length;

    if(nkey > KEY_MAX_LENGTH) {
        FUNC9(c, "CLIENT_ERROR bad command line format");
        return;
    }

    if (settings.detail_enabled) {
        FUNC13(key, nkey);
    }

    it = FUNC7(key, nkey, c, DONT_UPDATE, &hv);
    if (it) {
        FUNC2(c->sfd, FUNC1(it), it->nkey);

        FUNC10(&c->thread->stats.mutex);
        c->thread->stats.slab_stats[FUNC0(it)].delete_hits++;
        FUNC11(&c->thread->stats.mutex);

        FUNC6(it, hv);
        FUNC3(c->thread->storage, it);
        FUNC5(it);      /* release our reference */
        FUNC9(c, "DELETED");
    } else {
        FUNC10(&c->thread->stats.mutex);
        c->thread->stats.delete_misses++;
        FUNC11(&c->thread->stats.mutex);

        FUNC9(c, "NOT_FOUND");
    }
    FUNC8(hv);
}