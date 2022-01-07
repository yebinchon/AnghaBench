
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int dummy; } ;
struct cache {int dummy; } ;


 int cache_entry_unref (struct cache*,struct cache_entry*) ;

__attribute__((used)) static void cache_entry_unref_defer(void *data1, void *data2)
{
    cache_entry_unref((struct cache *)data1, (struct cache_entry *)data2);
}
