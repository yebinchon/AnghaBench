
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int execSubid; } ;


 int GetCurrentSubTransactionId () ;
 int SPI_ERROR_UNCONNECTED ;
 TYPE_1__* _SPI_current ;
 int _SPI_execmem () ;

__attribute__((used)) static int
_SPI_begin_call(bool use_exec)
{
 if (_SPI_current == ((void*)0))
  return SPI_ERROR_UNCONNECTED;

 if (use_exec)
 {

  _SPI_current->execSubid = GetCurrentSubTransactionId();

  _SPI_execmem();
 }

 return 0;
}
