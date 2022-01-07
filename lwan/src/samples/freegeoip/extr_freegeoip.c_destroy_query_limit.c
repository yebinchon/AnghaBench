
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int dummy; } ;


 int free (struct cache_entry*) ;

__attribute__((used)) static void destroy_query_limit(struct cache_entry *entry,
                                void *context __attribute__((unused)))
{
    free(entry);
}
