#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
struct rrdengine_instance {int dummy; } ;
struct rrdeng_page_descr {struct page_cache_descr* pg_cache_descr; } ;
struct page_cache_descr {void* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_RRDENGINE ; 
 int /*<<< orphan*/  INVALID_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct rrdeng_page_descr* FUNC1 (struct rrdengine_instance*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void *FUNC2(struct rrdengine_instance *ctx, uuid_t *id, void **handle)
{
    struct rrdeng_page_descr *descr;
    struct page_cache_descr *pg_cache_descr;

    FUNC0(D_RRDENGINE, "Reading existing page:");
    descr = FUNC1(ctx, NULL, id, INVALID_TIME);
    if (NULL == descr) {
        *handle = NULL;

        return NULL;
    }
    *handle = descr;
    pg_cache_descr = descr->pg_cache_descr;

    return pg_cache_descr->page;
}