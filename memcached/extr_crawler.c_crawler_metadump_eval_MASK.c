#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {scalar_t__ exptime; scalar_t__ time; int it_flags; int /*<<< orphan*/  nkey; } ;
typedef  TYPE_2__ item ;
struct TYPE_12__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  cbuf; } ;
struct TYPE_14__ {TYPE_1__ c; } ;
typedef  TYPE_3__ crawler_module_t ;

/* Variables and functions */
 int ITEM_FETCHED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int KEY_MAX_URI_ENCODED_LENGTH ; 
 int LRU_CRAWLER_WRITEBUF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ current_time ; 
 int FUNC5 (TYPE_2__*) ; 
 scalar_t__ process_started ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,char*,char*,int,unsigned long long,unsigned long long,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(crawler_module_t *cm, item *it, uint32_t hv, int i) {
    //int slab_id = CLEAR_LRU(i);
    char keybuf[KEY_MAX_URI_ENCODED_LENGTH];
    int is_flushed = FUNC5(it);
    /* Ignore expired content. */
    if ((it->exptime != 0 && it->exptime < current_time)
        || is_flushed) {
        FUNC6(it);
        return;
    }
    // TODO: uriencode directly into the buffer.
    FUNC8(FUNC2(it), keybuf, it->nkey, KEY_MAX_URI_ENCODED_LENGTH);
    int total = FUNC7(cm->c.cbuf, 4096,
            "key=%s exp=%ld la=%llu cas=%llu fetch=%s cls=%u size=%lu\n",
            keybuf,
            (it->exptime == 0) ? -1 : (long)(it->exptime + process_started),
            (unsigned long long)(it->time + process_started),
            (unsigned long long)FUNC1(it),
            (it->it_flags & ITEM_FETCHED) ? "yes" : "no",
            FUNC0(it),
            (unsigned long) FUNC3(it));
    FUNC6(it);
    // TODO: some way of tracking the errors. these are very unlikely though.
    if (total >= LRU_CRAWLER_WRITEBUF - 1 || total <= 0) {
        /* Failed to write, don't push it. */
        return;
    }
    FUNC4(cm->c.buf, total);
}