
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BufferUsage ;


 int BufferUsageAdd (int *,int *) ;
 int pgBufferUsage ;

void
InstrAccumParallelQuery(BufferUsage *result)
{
 BufferUsageAdd(&pgBufferUsage, result);
}
