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
struct idmap_cache {int /*<<< orphan*/  lock; struct cache_ops const* ops; int /*<<< orphan*/  head; } ;
struct cache_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(
    struct idmap_cache *cache,
    const struct cache_ops *ops)
{
    FUNC1(&cache->head);
    cache->ops = ops;
    FUNC0(&cache->lock);
}