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
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct crawler_expired_data {int /*<<< orphan*/  lock; TYPE_3__* crawlerstats; } ;
typedef  int rel_time_t ;
struct TYPE_17__ {int /*<<< orphan*/  page_version; int /*<<< orphan*/  page_id; } ;
typedef  TYPE_1__ item_hdr ;
struct TYPE_18__ {int it_flags; scalar_t__ exptime; int slabs_clsid; int nkey; } ;
typedef  TYPE_2__ item ;
struct TYPE_19__ {int /*<<< orphan*/ * histo; int /*<<< orphan*/  ttl_hourplus; int /*<<< orphan*/  noexp; int /*<<< orphan*/  seen; int /*<<< orphan*/  reclaimed; } ;
typedef  TYPE_3__ crawlerstats_t ;
struct TYPE_20__ {scalar_t__ data; } ;
typedef  TYPE_4__ crawler_module_t ;
struct TYPE_21__ {int verbose; } ;
struct TYPE_16__ {int /*<<< orphan*/  unfetched; int /*<<< orphan*/  reclaimed; } ;

/* Variables and functions */
 int ITEM_FETCHED ; 
 int ITEM_HDR ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_10__* crawlers ; 
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_5__ settings ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  storage ; 

__attribute__((used)) static void FUNC11(crawler_module_t *cm, item *search, uint32_t hv, int i) {
    struct crawler_expired_data *d = (struct crawler_expired_data *) cm->data;
    FUNC8(&d->lock);
    crawlerstats_t *s = &d->crawlerstats[i];
    int is_flushed = FUNC7(search);
#ifdef EXTSTORE
    bool is_valid = true;
    if (search->it_flags & ITEM_HDR) {
        item_hdr *hdr = (item_hdr *)ITEM_data(search);
        if (extstore_check(storage, hdr->page_id, hdr->page_version) != 0)
            is_valid = false;
    }
#endif
    if ((search->exptime != 0 && search->exptime < current_time)
        || is_flushed
#ifdef EXTSTORE
        || !is_valid
#endif
        ) {
        crawlers[i].reclaimed++;
        s->reclaimed++;

        if (settings.verbose > 1) {
            int ii;
            char *key = FUNC1(search);
            FUNC6(stderr, "LRU crawler found an expired item (flags: %d, slab: %d): ",
                search->it_flags, search->slabs_clsid);
            for (ii = 0; ii < search->nkey; ++ii) {
                FUNC6(stderr, "%c", key[ii]);
            }
            FUNC6(stderr, "\n");
        }
        if ((search->it_flags & ITEM_FETCHED) == 0 && !is_flushed) {
            crawlers[i].unfetched++;
        }
#ifdef EXTSTORE
        STORAGE_delete(storage, search);
#endif
        FUNC4(search, hv);
        FUNC3(search);
    } else {
        s->seen++;
        FUNC10(search);
        if (search->exptime == 0) {
            s->noexp++;
        } else if (search->exptime - current_time > 3599) {
            s->ttl_hourplus++;
        } else {
            rel_time_t ttl_remain = search->exptime - current_time;
            int bucket = ttl_remain / 60;
            if (bucket <= 60) {
                s->histo[bucket]++;
            }
        }
    }
    FUNC9(&d->lock);
}