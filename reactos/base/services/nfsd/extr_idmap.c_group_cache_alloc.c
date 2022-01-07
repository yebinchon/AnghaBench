
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_entry {int dummy; } ;
struct idmap_group {struct list_entry entry; } ;


 struct idmap_group* calloc (int,int) ;

__attribute__((used)) static struct list_entry* group_cache_alloc()
{
    struct idmap_group *group = calloc(1, sizeof(struct idmap_group));
    return group == ((void*)0) ? ((void*)0) : &group->entry;
}
