
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pgBufferUsage ;
 int save_pgBufferUsage ;

void
InstrStartParallelQuery(void)
{
 save_pgBufferUsage = pgBufferUsage;
}
