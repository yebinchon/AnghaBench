
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_limit {scalar_t__ queries; } ;
struct cache_entry {int dummy; } ;


 scalar_t__ LIKELY (struct query_limit*) ;
 struct query_limit* malloc (int) ;

__attribute__((used)) static struct cache_entry *create_query_limit(const char *key
                                              __attribute__((unused)),
                                              void *context
                                              __attribute__((unused)))
{
    struct query_limit *entry = malloc(sizeof(*entry));
    if (LIKELY(entry))
        entry->queries = 0;
    return (struct cache_entry *)entry;
}
