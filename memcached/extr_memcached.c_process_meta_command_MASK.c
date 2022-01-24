#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {size_t length; char* value; } ;
typedef  TYPE_3__ token_t ;
struct TYPE_20__ {int nkey; scalar_t__ exptime; int time; int it_flags; } ;
typedef  TYPE_4__ item ;
struct TYPE_21__ {char* wbuf; size_t wbytes; char* wcurr; TYPE_2__* thread; int /*<<< orphan*/  write_and_go; scalar_t__ wsize; } ;
typedef  TYPE_5__ conn ;
struct TYPE_17__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  meta_cmds; } ;
struct TYPE_18__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  DONT_UPDATE ; 
 int ITEM_FETCHED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 char* FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 size_t KEY_MAX_LENGTH ; 
 size_t KEY_TOKEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_new_cmd ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_write ; 
 int current_time ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 TYPE_4__* FUNC7 (char*,size_t,TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 size_t FUNC12 (char*,scalar_t__,char*,int,unsigned long long,unsigned long long,char*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC13(conn *c, token_t *tokens, const size_t ntokens) {
    FUNC4(c != NULL);

    if (tokens[KEY_TOKEN].length > KEY_MAX_LENGTH) {
        FUNC9(c, "CLIENT_ERROR bad command line format");
        return;
    }

    char *key = tokens[KEY_TOKEN].value;
    size_t nkey = tokens[KEY_TOKEN].length;

    item *it = FUNC7(key, nkey, c, 0, false, DONT_UPDATE);
    if (it) {
        size_t total = 0;
        size_t ret;
        // similar to out_string().
        FUNC8(c->wbuf, "ME ", 3);
        total += 3;
        FUNC8(c->wbuf + total, FUNC2(it), it->nkey);
        total += it->nkey;
        c->wbuf[total] = ' ';
        total++;

        ret = FUNC12(c->wbuf + total, c->wsize - (it->nkey + 12),
                "exp=%d la=%llu cas=%llu fetch=%s cls=%u size=%lu\r\nEN\r\n",
                (it->exptime == 0) ? -1 : (current_time - it->exptime),
                (unsigned long long)(current_time - it->time),
                (unsigned long long)FUNC1(it),
                (it->it_flags & ITEM_FETCHED) ? "yes" : "no",
                FUNC0(it),
                (unsigned long) FUNC3(it));

        FUNC6(it);
        c->wbytes = total + ret;
        c->wcurr = c->wbuf;
        FUNC5(c, conn_write);
        c->write_and_go = conn_new_cmd;
    } else {
        FUNC9(c, "EN");
    }
    FUNC10(&c->thread->stats.mutex);
    c->thread->stats.meta_cmds++;
    FUNC11(&c->thread->stats.mutex);
}