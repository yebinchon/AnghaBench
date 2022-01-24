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
struct lwan_lua_priv {struct lwan_lua_priv* script; struct lwan_lua_priv* script_file; struct lwan_lua_priv* default_type; int /*<<< orphan*/  cache_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lwan_lua_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *instance)
{
    struct lwan_lua_priv *priv = instance;

    if (priv) {
        FUNC1(priv->cache_key);
        FUNC0(priv->default_type);
        FUNC0(priv->script_file);
        FUNC0(priv->script);
        FUNC0(priv);
    }
}