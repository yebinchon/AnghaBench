
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blocks; } ;
typedef scalar_t__ MemoryContext ;
typedef TYPE_1__ GenerationContext ;


 int dlist_is_empty (int *) ;

__attribute__((used)) static bool
GenerationIsEmpty(MemoryContext context)
{
 GenerationContext *set = (GenerationContext *) context;

 return dlist_is_empty(&set->blocks);
}
