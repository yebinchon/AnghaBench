
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {size_t count; int * list; } ;


 int memmove (int *,int *,size_t) ;

__attribute__((used)) static void
rangelist_remove_at(struct RangeList *targets, size_t index)
{
    memmove(&targets->list[index],
            &targets->list[index+1],
            (targets->count - index) * sizeof(targets->list[index])
            );
    targets->count--;
}
