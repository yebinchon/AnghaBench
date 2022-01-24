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
struct query_limit {scalar_t__ queries; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct query_limit*) ; 
 struct query_limit* FUNC1 (int) ; 

__attribute__((used)) static struct cache_entry *FUNC2(const char *key
                                              __attribute__((unused)),
                                              void *context
                                              __attribute__((unused)))
{
    struct query_limit *entry = FUNC1(sizeof(*entry));
    if (FUNC0(entry))
        entry->queries = 0;
    return (struct cache_entry *)entry;
}