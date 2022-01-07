
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MinimalTuple ;


 int pfree (int ) ;

void
heap_free_minimal_tuple(MinimalTuple mtup)
{
 pfree(mtup);
}
