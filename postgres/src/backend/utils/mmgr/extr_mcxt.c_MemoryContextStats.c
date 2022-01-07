
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;


 int MemoryContextStatsDetail (int ,int) ;

void
MemoryContextStats(MemoryContext context)
{

 MemoryContextStatsDetail(context, 100);
}
