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
struct lwan_lua_state {int /*<<< orphan*/  L; } ;
struct lwan_lua_priv {int /*<<< orphan*/  script; int /*<<< orphan*/  script_file; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct lwan_lua_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lwan_lua_state* FUNC4 (int) ; 

__attribute__((used)) static struct cache_entry *FUNC5(const char *key __attribute__((unused)),
                                        void *context)
{
    struct lwan_lua_priv *priv = context;
    struct lwan_lua_state *state = FUNC4(sizeof(*state));

    if (FUNC1(!state))
        return NULL;

    state->L = FUNC3(priv->script_file, priv->script);
    if (FUNC0(state->L))
        return (struct cache_entry *)state;

    FUNC2(state);
    return NULL;
}