#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {size_t length; char* value; } ;
typedef  TYPE_4__ token_t ;
typedef  int /*<<< orphan*/  item ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_16__ {TYPE_3__* thread; } ;
typedef  TYPE_5__ conn ;
struct TYPE_13__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  touch_misses; int /*<<< orphan*/  touch_cmds; TYPE_1__* slab_stats; } ;
struct TYPE_14__ {TYPE_2__ stats; } ;
struct TYPE_12__ {int /*<<< orphan*/  touch_hits; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 size_t KEY_MAX_LENGTH ; 
 size_t KEY_TOKEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,size_t,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_4__*,size_t const) ; 

__attribute__((used)) static void FUNC10(conn *c, token_t *tokens, const size_t ntokens) {
    char *key;
    size_t nkey;
    int32_t exptime_int = 0;
    item *it;

    FUNC1(c != NULL);

    FUNC9(c, tokens, ntokens);

    if (tokens[KEY_TOKEN].length > KEY_MAX_LENGTH) {
        FUNC4(c, "CLIENT_ERROR bad command line format");
        return;
    }

    key = tokens[KEY_TOKEN].value;
    nkey = tokens[KEY_TOKEN].length;

    if (!FUNC8(tokens[2].value, &exptime_int)) {
        FUNC4(c, "CLIENT_ERROR invalid exptime argument");
        return;
    }

    it = FUNC3(key, nkey, FUNC7(exptime_int), c);
    if (it) {
        FUNC5(&c->thread->stats.mutex);
        c->thread->stats.touch_cmds++;
        c->thread->stats.slab_stats[FUNC0(it)].touch_hits++;
        FUNC6(&c->thread->stats.mutex);

        FUNC4(c, "TOUCHED");
        FUNC2(it);
    } else {
        FUNC5(&c->thread->stats.mutex);
        c->thread->stats.touch_cmds++;
        c->thread->stats.touch_misses++;
        FUNC6(&c->thread->stats.mutex);

        FUNC4(c, "NOT_FOUND");
    }
}