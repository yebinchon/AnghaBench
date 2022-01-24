#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; } ;
struct page_cache {TYPE_1__ replaceQ; } ;
struct rrdengine_instance {struct page_cache pg_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rrdengine_instance *ctx)
{
    struct page_cache *pg_cache = &ctx->pg_cache;

    pg_cache->replaceQ.head = NULL;
    pg_cache->replaceQ.tail = NULL;
    FUNC0(0 == FUNC1(&pg_cache->replaceQ.lock));
}