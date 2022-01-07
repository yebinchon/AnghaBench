
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifgroup {struct cifgroup* description; struct cifgroup* id; } ;


 int heap_free (struct cifgroup*) ;

__attribute__((used)) static void group_free(struct cifgroup *group)
{
    heap_free(group->id);
    heap_free(group->description);
    heap_free(group);
}
