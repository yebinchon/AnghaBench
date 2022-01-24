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
struct lwan_url_map {char const* prefix; int /*<<< orphan*/  prefix_len; } ;
struct lwan_trie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lwan_trie*,char const*,struct lwan_url_map*) ; 
 struct lwan_url_map* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct lwan_url_map*,struct lwan_url_map const*,int) ; 
 char const* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static struct lwan_url_map *FUNC6(struct lwan_trie *t, const char *prefix,
                                        const struct lwan_url_map *map)
{
    struct lwan_url_map *copy = FUNC2(sizeof(*copy));

    if (!copy)
        FUNC0("Could not copy URL map");

    FUNC3(copy, map, sizeof(*copy));

    copy->prefix = FUNC4(prefix ? prefix : copy->prefix);
    if (!copy->prefix)
        FUNC0("Could not copy URL prefix");

    copy->prefix_len = FUNC5(copy->prefix);
    FUNC1(t, copy->prefix, copy);

    return copy;
}