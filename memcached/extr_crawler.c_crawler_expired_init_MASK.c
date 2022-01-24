#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct crawler_expired_data {int is_external; int /*<<< orphan*/  lock; TYPE_2__* crawlerstats; void* start_time; } ;
typedef  int /*<<< orphan*/  crawlerstats_t ;
struct TYPE_4__ {struct crawler_expired_data* data; } ;
typedef  TYPE_1__ crawler_module_t ;
struct TYPE_5__ {int run_complete; void* start_time; } ;

/* Variables and functions */
 int POWER_LARGEST ; 
 struct crawler_expired_data* FUNC0 (int,int) ; 
 void* current_time ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(crawler_module_t *cm, void *data) {
    struct crawler_expired_data *d;
    if (data != NULL) {
        d = data;
        d->is_external = true;
        cm->data = data;
    } else {
        // allocate data.
        d = FUNC0(1, sizeof(struct crawler_expired_data));
        if (d == NULL) {
            return -1;
        }
        // init lock.
        FUNC2(&d->lock, NULL);
        d->is_external = false;
        d->start_time = current_time;

        cm->data = d;
    }
    FUNC3(&d->lock);
    FUNC1(&d->crawlerstats, 0, sizeof(crawlerstats_t) * POWER_LARGEST);
    for (int x = 0; x < POWER_LARGEST; x++) {
        d->crawlerstats[x].start_time = current_time;
        d->crawlerstats[x].run_complete = false;
    }
    FUNC4(&d->lock);
    return 0;
}