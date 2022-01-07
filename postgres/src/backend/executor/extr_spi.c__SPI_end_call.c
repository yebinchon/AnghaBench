
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int execCxt; int execSubid; } ;


 int InvalidSubTransactionId ;
 int MemoryContextResetAndDeleteChildren (int ) ;
 TYPE_1__* _SPI_current ;
 int _SPI_procmem () ;

__attribute__((used)) static int
_SPI_end_call(bool use_exec)
{
 if (use_exec)
 {

  _SPI_procmem();

  _SPI_current->execSubid = InvalidSubTransactionId;

  MemoryContextResetAndDeleteChildren(_SPI_current->execCxt);
 }

 return 0;
}
