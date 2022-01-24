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
struct lwan_lua_settings {int /*<<< orphan*/  script; int /*<<< orphan*/  cache_period; int /*<<< orphan*/  script_file; int /*<<< orphan*/  default_type; } ;
struct hash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hash const*,char*) ; 
 void* FUNC1 (char const*,struct lwan_lua_settings*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void *FUNC3(const char *prefix, const struct hash *hash)
{
    struct lwan_lua_settings settings = {
        .default_type = FUNC0(hash, "default_type"),
        .script_file = FUNC0(hash, "script_file"),
        .cache_period = FUNC2(FUNC0(hash, "cache_period"), 15),
        .script = FUNC0(hash, "script")
    };

    return FUNC1(prefix, &settings);
}