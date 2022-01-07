
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int execCxt; } ;
typedef int MemoryContext ;


 int MemoryContextSwitchTo (int ) ;
 TYPE_1__* _SPI_current ;

__attribute__((used)) static MemoryContext
_SPI_execmem(void)
{
 return MemoryContextSwitchTo(_SPI_current->execCxt);
}
