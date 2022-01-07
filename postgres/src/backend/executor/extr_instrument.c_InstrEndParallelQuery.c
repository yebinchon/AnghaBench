
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BufferUsage ;


 int BufferUsageAccumDiff (int *,int *,int *) ;
 int memset (int *,int ,int) ;
 int pgBufferUsage ;
 int save_pgBufferUsage ;

void
InstrEndParallelQuery(BufferUsage *result)
{
 memset(result, 0, sizeof(BufferUsage));
 BufferUsageAccumDiff(result, &pgBufferUsage, &save_pgBufferUsage);
}
