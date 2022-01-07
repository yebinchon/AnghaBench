
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_3__ {int mem_used; } ;
typedef TYPE_1__ IntegerSet ;



uint64
intset_memory_usage(IntegerSet *intset)
{
 return intset->mem_used;
}
