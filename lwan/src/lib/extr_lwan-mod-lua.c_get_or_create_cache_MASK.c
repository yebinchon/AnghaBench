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
struct lwan_lua_priv {int /*<<< orphan*/  cache_key; int /*<<< orphan*/  cache_period; } ;
struct cache {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct cache* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lwan_lua_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct cache* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cache*) ; 
 int /*<<< orphan*/  state_create ; 
 int /*<<< orphan*/  state_destroy ; 

__attribute__((used)) static struct cache *FUNC6(struct lwan_lua_priv *priv)
{
    struct cache *cache = FUNC4(priv->cache_key);

    if (FUNC0(!cache)) {
        FUNC2("Creating cache for this thread");
        cache =
            FUNC1(state_create, state_destroy, priv, priv->cache_period);
        if (FUNC0(!cache))
            FUNC3("Could not create cache");
        /* FIXME: This cache instance leaks: store it somewhere and
         * free it on module shutdown */
        FUNC5(priv->cache_key, cache);
    }

    return cache;
}