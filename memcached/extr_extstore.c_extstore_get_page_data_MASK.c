#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct extstore_stats {int /*<<< orphan*/  page_data; } ;
struct extstore_page_data {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  page_data; } ;
struct TYPE_6__ {int page_count; TYPE_1__ stats; } ;
typedef  TYPE_2__ store_engine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(void *ptr, struct extstore_stats *st) {
    store_engine *e = (store_engine *)ptr;
    FUNC0(e);
    FUNC2(st->page_data, e->stats.page_data,
            sizeof(struct extstore_page_data) * e->page_count);
    FUNC1(e);
}