#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_14__ {size_t length; char* value; } ;
typedef  TYPE_3__ token_t ;
struct TYPE_15__ {TYPE_2__* thread; } ;
typedef  TYPE_4__ conn ;
struct TYPE_12__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  decr_misses; int /*<<< orphan*/  incr_misses; } ;
struct TYPE_13__ {TYPE_1__ stats; } ;

/* Variables and functions */
#define  DELTA_ITEM_CAS_MISMATCH 132 
#define  DELTA_ITEM_NOT_FOUND 131 
#define  EOM 130 
 int INCR_MAX_STORAGE_LEN ; 
 size_t KEY_MAX_LENGTH ; 
 size_t KEY_TOKEN ; 
#define  NON_NUMERIC 129 
#define  OK 128 
 int FUNC0 (TYPE_4__*,char*,size_t,int const,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_3__*,size_t const) ; 

__attribute__((used)) static void FUNC8(conn *c, token_t *tokens, const size_t ntokens, const bool incr) {
    char temp[INCR_MAX_STORAGE_LEN];
    uint64_t delta;
    char *key;
    size_t nkey;

    FUNC1(c != NULL);

    FUNC7(c, tokens, ntokens);

    if (tokens[KEY_TOKEN].length > KEY_MAX_LENGTH) {
        FUNC3(c, "CLIENT_ERROR bad command line format");
        return;
    }

    key = tokens[KEY_TOKEN].value;
    nkey = tokens[KEY_TOKEN].length;

    if (!FUNC6(tokens[2].value, &delta)) {
        FUNC3(c, "CLIENT_ERROR invalid numeric delta argument");
        return;
    }

    switch(FUNC0(c, key, nkey, incr, delta, temp, NULL)) {
    case OK:
        FUNC3(c, temp);
        break;
    case NON_NUMERIC:
        FUNC3(c, "CLIENT_ERROR cannot increment or decrement non-numeric value");
        break;
    case EOM:
        FUNC2(c, "SERVER_ERROR out of memory");
        break;
    case DELTA_ITEM_NOT_FOUND:
        FUNC4(&c->thread->stats.mutex);
        if (incr) {
            c->thread->stats.incr_misses++;
        } else {
            c->thread->stats.decr_misses++;
        }
        FUNC5(&c->thread->stats.mutex);

        FUNC3(c, "NOT_FOUND");
        break;
    case DELTA_ITEM_CAS_MISMATCH:
        break; /* Should never get here */
    }
}