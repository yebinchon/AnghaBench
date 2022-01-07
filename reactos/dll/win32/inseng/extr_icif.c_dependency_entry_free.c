
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dependency_info {struct dependency_info* id; } ;


 int heap_free (struct dependency_info*) ;

__attribute__((used)) static void dependency_entry_free(struct dependency_info *dependency)
{
    heap_free(dependency->id);
    heap_free(dependency);
}
