
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Range6List {unsigned int count; int * list; } ;


 int memmove (int *,int *,unsigned int) ;

__attribute__((used)) static void
todo_remove_at(struct Range6List *targets, unsigned index)
{
    memmove(&targets->list[index],
            &targets->list[index+1],
            (targets->count - index) * sizeof(targets->list[index])
            );
    targets->count--;
}
